import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';

/*
# critter-data-store

Storrage for level data

## Example
```html
<critter-data-store></critter-data-store>
```

@demo
*/


window.Core = window.Core || {};
window.Core.CritterLevelData = window.Core.CritterLevelData || [];

class CritterDataStore extends PolymerElement {
    static get is() {
        return 'critter-data-store';
    }

    static get properties() {
        return {
            levelName: {
                type: String,
                value: '',
                observer: '_updateLevelData'
            },

            level: {
                type: Array,
                notify: true
            },

            numberOfCritters: {
                type: Number,
                notify: true
            },

            numberOfHumans: {
                type: Number,
                notify: true
            },

            tower: {
                type: Object,
                notify: true
            },

            spawn: {
                type: Object,
                notify: true
            },

            width: {
                type: Number,
                value: 16,
                notify: true
            },

            height: {
                type: Number,
                value: 16,
                notify: true
            },

            mines: {
                type: Array,
                value: [],
                notify: true
            },

            test: {
                type: String,
                value: '',
                observer: '_testCodeChanged'
            },

            cut: {
                type: Function
            },

            init: {
                type: Function
            },

            xml: {
                type: String,
                value: '',
                observer: '_xmlCodeChanged'
            },

            freeSeconds: {
                type: Number,
                value: 10
            },

            toolbox: {
                type: String,
                value: '',
                observer: '_toolboxChanged'
            },

            cookie: {
                type: String,
                value: ''
            }
        }
    }

    static get observers() {
        return [
            '_dataChanged(width, height, tower.*, spawn.*, level.*, mines.*)',
            '_sizeChanged(width, height)',
            '_critterNumberChanged(numberOfCritters, numberOfHumans)'
        ]
    }

    connectedCallback() {
        super.connectedCallback();
        window.Core.CritterLevelData = this;
        this.cookie = this.getCookie();
    }

    _dataChanged() {
        this.dispatchEvent(new CustomEvent('_levelDataChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _sizeChanged() {
        this.deleteMines();
        this.dispatchEvent(new CustomEvent('_levelSizeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _critterNumberChanged() {
        this.dispatchEvent(new CustomEvent('_critterNumberChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _testCodeChanged() {
        this.dispatchEvent(new CustomEvent('_testCodeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _xmlCodeChanged() {
        this.dispatchEvent(new CustomEvent('_xmlCodeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _toolboxChanged() {
        this.dispatchEvent(new CustomEvent('_toolboxChanged', {detail: {}, bubbles: true, composed: true}));
    }

    deleteMines(){
        this.mines = Array.from({length: this.width}, () => Array.from({length: this.height}, () => undefined));
    }

    countMines(){
        let count = 0;
        this.mines.forEach(row => {
            row.forEach(elem =>{
                if(elem){
                    count++;
                }
            });
        });
        return count;
    }

    /** performs an ajax call to get level data from the server **/
    _updateLevelData() {
        if (this.levelName === '') {
            return;
        }

        let req = document.createElement('iron-ajax');
        req.url = "/level/get";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;
        req.params = {level: this.levelName};

        req.addEventListener('response', e => {
            let data = e.detail.__data.response;
            this.level = data.level;
            this.spawn = data.spawn;
            this.tower = data.tower;
            this.width = data.width;
            this.height = data.height;
            this.numberOfHumans = data.numberOfHumans;
            this.numberOfCritters = data.numberOfCritters;
            this.cut = new Function(data.cut);
            this.init = new Function(data.init);
            this.xml = data.xml;
            this.test = data.test;
            this.toolbox = data.toolbox;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        this.dispatchEvent(new CustomEvent('_levelNameUpdated', {detail: {}, bubbles: true, composed: true}));

        return req;
    }

    setCookie(name, value) {
        document.cookie = name + "=" + value + ";" + ";path=/";
    }

    getCookie() {
        let decodedCookie = decodeURIComponent(document.cookie);
        let ca = decodedCookie.split(';');
        for (let i = 0; i < ca.length; i++) {
            let c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf('id') == 0) {
                return c.substring(3, c.length);
            }
        }
        let cookie = Math.random().toString(36).replace(/[^a-z]+/g, '').substr(0, 5);
        this.setCookie('id', cookie);
        return cookie;
    }
}

window.customElements.define(CritterDataStore.is, CritterDataStore);
