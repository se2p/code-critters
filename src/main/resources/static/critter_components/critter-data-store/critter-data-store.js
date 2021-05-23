/*-
 * #%L
 * Code Critters
 * %%
 * Copyright (C) 2019 Michael Gruber
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public
 * License along with this program.  If not, see
 * <http://www.gnu.org/licenses/gpl-3.0.html>.
 * #L%
 */
import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';

/*
# critter-data-store

Storage for level data

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
            user: {
                type: Object,
                value: {}
            },

            levelName: {
                type: String,
                value: '',
                observer: '_updateLevelData'
            },

            levelId: {
                type: String,
                value: ''
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
            },

            row: {
                type: String,
                value: '',
                notify: true
            },

            freeMines: {
                type: Number,
                notify: true
            }
        }
    }

    static get observers() {
        return [
            '_dataChanged(width, height, tower.*, spawn.*, level.*, mines.*)',
            '_sizeChanged(width, height)',
            '_critterNumberChanged(numberOfCritters, numberOfHumans)',
            '_userChanged(user,*)',
            '_rowChanged(row, freeMines)',
        ]
    }

    connectedCallback() {
        super.connectedCallback();
        window.Core.CritterLevelData = this;
        this.cookie = this.getCookie();
    }

    _userChanged(){
        this.dispatchEvent(new CustomEvent('_userChanged', {detail: {}, bubbles: true, composed: true}));
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

    /*
    _xmlCodeChanged() {
        this.dispatchEvent(new CustomEvent('_xmlCodeChanged', {detail: {}, bubbles: true, composed: true}));
    }
     */

    _toolboxChanged() {
        this.dispatchEvent(new CustomEvent('_toolboxChanged', {detail: {}, bubbles: true, composed: true}));
    }

    _rowChanged() {
        this.dispatchEvent(new CustomEvent('_rowChanged', {detail: {}, bubbles: true, composed: true}));
    }

    deleteMines(){
        this.mines = Array.from({length: this.width}, () => Array.from({length: this.height}, () => undefined));
    }

    /**
     * Gets all mines that have been set in the game.
     * @returns {*} A list of mines.
     */
    getMines() {
        let mineList = [];
        this.mines.forEach(row => {
            row.forEach(elem =>{
                if(elem){
                    mineList.push(elem);
                }
            });
        });
        return mineList;
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
            this.levelId = data.id;
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
            this.row = data.row;
            this.freeMines = data.freeMines;
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
                this.getMe();
                return c.substring(3, c.length);
            }
        }
        return this.setNewCookie();
    }

    setNewCookie() {
        let arr = new Uint8Array(32);
        (window.crypto || window.msCrypto).getRandomValues(arr);
        let cookie = Array.from(arr, this.dec2hex).join('');
        this.setCookie('id', cookie);
        return cookie;
    }

    dec2hex(dec) {
        return ('0' + dec.toString(16)).substr(-2)
    }

    getMe() {
        let req = document.createElement('iron-ajax');
        req.url = "/users/me";
        req.method = "GET";
        req.handleAs = 'json';
        req.contentType = 'application/json';
        req.bubbles = true;
        req.rejectWithRequest = true;

        req.addEventListener('response', e => {
            let data = e.detail.__data.response;
            this.user = data;
        });

        req.addEventListener('static.error', () => {
            this.user = undefined;
        });

        let genRequest = req.generateRequest();
        req.completes = genRequest.completes;
    }
}

window.customElements.define(CritterDataStore.is, CritterDataStore);
