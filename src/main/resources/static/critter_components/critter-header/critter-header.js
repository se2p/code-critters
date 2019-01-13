import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';


/*
# critter-insert

A Simple Button

## Example
```html
<critter-header></critter-header>
```

@demo
*/

class CritterHeader extends PolymerElement {
    static get template() {
        return html`
            <style>
                header{
                    width: 100%;
                    height: 40px;
                    background-color: #014d6d;
                    margin-bottom: 8px;
                }
                
                #image{
                    width: 100%;
                    text-align: center;
                }
                
                ul{
                    list-style: none;
                    height: 100%;
                    width: 60%;
                    margin: 0;
                }
                li {
                    float: left;
                    height: 100%;
                    width: 33%;
                }
                li a{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    width: 100%;
                    text-align: center;
                    height: 100%;
                    color: #F3F4F6;
                    font-size: 1.3em;
                }
            </style>
            <div id="image">
                <a href="/">
                    <img src="[[importPath]]images/logo.png">
                </a>
            </div>
             <header id="input">
             <ul>
                 <li>
                    <a href="/">Home</a>
                 </li>
                 <li>
                    <a href="/levels">Levels</a>
                 </li>
                 <li>
                    <!--<a href="/profile">Profile</a>-->
                 </li>
             </ul>
             </header>
        `;
    }

    static get importMeta() { return import.meta; }

    static get is() {
        return 'critter-header';
    }
}

window.customElements.define(CritterHeader.is, CritterHeader);