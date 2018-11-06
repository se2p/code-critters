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
                type: Number
            },

            numberOfHumans: {
                type: Number
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
                type: String,
                value: '',
                observer: '_cutCodeChanged'
            },

            init: {
                type: String,
                value: '',
                observer: '_initCodeChanged'
            },

            toolbox: {
                type: String,
                value: '',
                observer: '_toolboxChanged'
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
    }

    _dataChanged() {
        this.dispatchEvent(new CustomEvent('_levelDataChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _sizeChanged() {
        this.dispatchEvent(new CustomEvent('_levelSizeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _critterNumberChanged() {
        this.dispatchEvent(new CustomEvent('_critterNumberChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _testCodeChanged() {
        this.dispatchEvent(new CustomEvent('_testCodeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _initCodeChanged() {
        this.dispatchEvent(new CustomEvent('_initCodeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _cutCodeChanged() {
        this.dispatchEvent(new CustomEvent('_cutCodeChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _toolboxChanged() {
        this.dispatchEvent(new CustomEvent('_toolboxChanged', {detail: {}, bubbles: true, composed: true}));
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
            this.cut = data.cut;
            this.init = data.init;
            this.test = data.test;
            this.toolbox = data.toolbox;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;

        this.dispatchEvent(new CustomEvent('_levelNameUpdated', {detail: {}, bubbles: true, composed: true}));

        return req;
    }
}

window.customElements.define(CritterDataStore.is, CritterDataStore);
