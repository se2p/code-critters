import {html, PolymerElement} from '/lib/@polymer/polymer/polymer-element.js';
import {critterStyle} from '/style/critter-botstrap.js'

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
                :host {
                    width: 100%;
                    height: 0;
                }
                
                #image a{
                    float: left;
                }
                
                #image span{
                    color: #464c53;
                    text-decoration: none;
                    font-size: 3em;
                    height: 100%;
                    display: table-cell;
                    vertical-align: middle;
                    float: left;
                    margin: 0 8px;
                }
                #image img {
                    margin-bottom: 3px;
                }
                header{
                    clear: both;
                }
                
            </style>
            
            ${critterStyle}
       
            <div id="image" class="container mx-auto" style="width: fit-content;">
                <a href="/">
                    <img src="[[importPath]]images/logo.png">
                </a>
                <span>Code Critters</span>
            </div>
             <header class="navbar navbar-dark navbar-expand-sm bg-dark">
             <ul class="navbar-nav">
                 <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                 </li>
                 <li class="nav-item">
                    <a class="nav-link" href="/levels">Levels</a>
                 </li>
                 <li class="nav-item">
                    <!--<a class="nav-link" href="/profile">Profile</a>-->
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