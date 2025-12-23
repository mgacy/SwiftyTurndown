//
//  Mock.swift
//  SwiftyTurndown
//
//  Created by Mathew Gacy on 7/11/23.
//

import Foundation

// swiftlint:disable file_length line_length type_body_length
enum Mock {
    static let page1 = """
    <html lang="en" class="fontawesome-i2svg-active fontawesome-i2svg-complete">
      <head>
      </head>
      <body data-spy="scroll" data-target="#toc">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark mdg-nav">
          <div class="container">
            <a
              class="navbar-brand"
              href="/"
              style="margin-top: 2px; margin-bottom: 3px"
            >
              Markdown Guide
            </a>
            <button
              class="navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#navbarNavAltMarkup"
              aria-controls="navbarNavAltMarkup"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>
            <div
              class="collapse navbar-collapse"
              id="navbarNavAltMarkup"
              style="margin-top: 2px"
            >
              <div class="navbar-nav">
                <a class="nav-item nav-link" href="/getting-started/"
                  >Get Started</a
                >
                <a class="nav-item nav-link" href="/cheat-sheet/">Cheat Sheet</a>
                <a class="nav-item nav-link active" href="/basic-syntax/"
                  >Basic Syntax</a
                >
                <a class="nav-item nav-link" href="/extended-syntax/"
                  >Extended Syntax</a
                >
                <a class="nav-item nav-link" href="/hacks/">Hacks</a>
                <a class="nav-item nav-link" href="/tools/">Tools</a>
                <a class="nav-item nav-link" href="/book/">Book</a>
              </div>
            </div>
            <form class="form-inline d-none d-lg-inline-block mt-2 mt-md-0">
              <span
                class="algolia-autocomplete"
                style="position: relative; display: inline-block; direction: ltr"
                ><input
                  type="text"
                  class="form-control ds-input"
                  id="search-input"
                  placeholder="Search"
                  style="margin-top: 0px; position: relative; vertical-align: top"
                  autocomplete="off"
                  spellcheck="false"
                  role="combobox"
                  aria-autocomplete="list"
                  aria-expanded="false"
                  aria-label="search input"
                  aria-owns="algolia-autocomplete-listbox-0"
                  dir="auto" />
                <pre
                  aria-hidden="true"
                  style="
                    position: absolute;
                    visibility: hidden;
                    white-space: pre;
                    font-family: -apple-system, 'system-ui', 'Segoe UI', Roboto,
                      'Helvetica Neue', Arial, 'Noto Sans', 'Liberation Sans',
                      sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji',
                      'Segoe UI Symbol', 'Noto Color Emoji';
                    font-size: 12px;
                    font-style: normal;
                    font-variant: normal;
                    font-weight: 400;
                    word-spacing: 0px;
                    letter-spacing: normal;
                    text-indent: 0px;
                    text-rendering: auto;
                    text-transform: none;
                  "
                ></pre>
                <span
                  class="ds-dropdown-menu"
                  role="listbox"
                  id="algolia-autocomplete-listbox-0"
                  style="
                    position: absolute;
                    top: 100%;
                    z-index: 100;
                    display: none;
                    left: 0px;
                    right: auto;
                  "
                  ><div class="ds-dataset-1"></div></span
              ></span>
            </form>
          </div>
        </nav>

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
          <div class="container">
            <h1 class="no-anchor" data-toc-skip="" id="basic-syntax">
              Basic Syntax
            </h1>
            <p>The Markdown elements outlined in the original design document.</p>
          </div>
        </div>
        <div class="container">
          <div class="row row-offcanvas row-offcanvas-right">
            <div class="col-xs-12 col-sm-12 col-md-9">
              <h2 id="overview">
                Overview<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#overview"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                Nearly all Markdown applications support the basic syntax outlined
                in the original Markdown design document. There are minor variations
                and discrepancies between Markdown processors — those are noted
                inline wherever possible.
              </p>

              <h2 id="headings">
                Headings<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#headings"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To create a heading, add number signs (<code
                  class="language-plaintext highlighter-rouge"
                  >#</code
                >) in front of a word or phrase. The number of number signs you use
                should correspond to the heading level. For example, to create a
                heading level three (<code
                  class="language-plaintext highlighter-rouge"
                  >&lt;h3&gt;</code
                >), use three number signs (e.g.,
                <code class="language-plaintext highlighter-rouge"
                  >### My Header</code
                >).
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"># Heading level 1</code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h1&gt;Heading level 1&lt;/h1&gt;</code
                      >
                    </td>
                    <td>
                      <h1 class="no-anchor" data-toc-skip="" id="heading-level-1">
                        Heading level 1
                      </h1>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">## Heading level 2</code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h2&gt;Heading level 2&lt;/h2&gt;</code
                      >
                    </td>
                    <td>
                      <h2 class="no-anchor" data-toc-skip="" id="heading-level-2">
                        Heading level 2
                      </h2>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">### Heading level 3</code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h3&gt;Heading level 3&lt;/h3&gt;</code
                      >
                    </td>
                    <td>
                      <h3 class="no-anchor" data-toc-skip="" id="heading-level-3">
                        Heading level 3
                      </h3>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">#### Heading level 4</code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h4&gt;Heading level 4&lt;/h4&gt;</code
                      >
                    </td>
                    <td>
                      <h4 class="no-anchor" id="heading-level-4">
                        Heading level 4
                      </h4>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">##### Heading level 5</code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h5&gt;Heading level 5&lt;/h5&gt;</code
                      >
                    </td>
                    <td>
                      <h5 class="no-anchor" id="heading-level-5">
                        Heading level 5
                      </h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">###### Heading level 6</code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h6&gt;Heading level 6&lt;/h6&gt;</code
                      >
                    </td>
                    <td><h6 class="no-anchor">Heading level 6</h6></td>
                  </tr>
                </tbody>
              </table>

              <h3 id="alternate-syntax">
                Alternate Syntax<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#alternate-syntax"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Alternatively, on the line below the text, add any number of
                <code class="language-plaintext highlighter-rouge">==</code>
                characters for heading level 1 or
                <code class="language-plaintext highlighter-rouge">--</code>
                characters for heading level 2.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >Heading level 1<br />===============</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h1&gt;Heading level 1&lt;/h1&gt;</code
                      >
                    </td>
                    <td>
                      <h1 class="no-anchor" data-toc-skip="" id="heading-level-1-1">
                        Heading level 1
                      </h1>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >Heading level 2<br />---------------</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;h2&gt;Heading level 2&lt;/h2&gt;</code
                      >
                    </td>
                    <td>
                      <h2 class="no-anchor" data-toc-skip="" id="heading-level-2-1">
                        Heading level 2
                      </h2>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="heading-best-practices">
                Heading Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#heading-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Markdown applications don’t agree on how to handle a missing space
                between the number signs (<code
                  class="language-plaintext highlighter-rouge"
                  >#</code
                >) and the heading name. For compatibility, always put a space
                between the number signs and the heading name.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        # Here's a Heading<br /><br />
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"> #Here's a Heading </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <p>
                You should also put blank lines before and after a heading for
                compatibility.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        Try to put a blank line before...<br /><br />

                        # Heading<br /><br />

                        ...and after a heading.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        Without blank lines, this might not look right.<br />
                        # Heading<br />
                        Don't do this!
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="paragraphs-1">
                Paragraphs<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#paragraphs-1"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To create paragraphs, use a blank line to separate one or more lines
                of text.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        I really like using Markdown.<br /><br />

                        I think I'll use it to format all of my documents from now
                        on.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;p&gt;I really like using Markdown.&lt;/p&gt;<br /><br />

                        &lt;p&gt;I think I'll use it to format all of my documents
                        from now on.&lt;/p&gt;</code
                      >
                    </td>
                    <td>
                      <p>I really like using Markdown.</p>

                      <p>
                        I think I'll use it to format all of my documents from now
                        on.
                      </p>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="paragraph-best-practices">
                Paragraph Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#paragraph-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Unless the
                <a href="/basic-syntax/#paragraphs">paragraph is in a list</a>,
                don’t indent paragraphs with spaces or tabs.
              </p>

              <div class="alert alert-info">
                <svg
                  class="svg-inline--fa fa-info-circle fa-w-16"
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fas"
                  data-icon="info-circle"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  data-fa-i2svg=""
                >
                  <path
                    fill="currentColor"
                    d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"
                  ></path></svg
                ><!-- <i class="fas fa-info-circle"></i> -->
                <strong>Note:</strong> If you need to indent paragraphs in the
                output, see the section on how to
                <a href="/hacks/#indent-tab">indent (tab)</a>.
              </div>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        Don't put tabs or spaces in front of your paragraphs.<br /><br />

                        Keep lines left-aligned like this.<br /><br />
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &nbsp;&nbsp;&nbsp;&nbsp;This can result in unexpected
                        formatting problems.<br /><br />

                        &nbsp;&nbsp;Don't add tabs or spaces in front of paragraphs.
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="line-breaks">
                Line Breaks<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#line-breaks"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To create a line break or new line (<code
                  class="language-plaintext highlighter-rouge"
                  >&lt;br&gt;</code
                >), end a line with two or more spaces, and then type return.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        This is the first line. &nbsp;<br />
                        And this is the second line.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >&lt;p&gt;This is the first line.&lt;br&gt;<br />

                        And this is the second line.&lt;/p&gt;</code
                      >
                    </td>
                    <td>
                      <p>
                        This is the first line.<br />
                        And this is the second line.
                      </p>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="line-break-best-practices">
                Line Break Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#line-break-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                You can use two or more spaces (commonly referred to as “trailing
                whitespace”) for line breaks in nearly every Markdown application,
                but it’s controversial. It’s hard to see trailing whitespace in an
                editor, and many people accidentally or intentionally put two spaces
                after every sentence. For this reason, you may want to use something
                other than trailing whitespace for line breaks. If your Markdown
                application <a href="/basic-syntax/#html">supports HTML</a>, you can
                use the
                <code class="language-plaintext highlighter-rouge">&lt;br&gt;</code>
                HTML tag.
              </p>

              <p>
                For compatibility, use trailing white space or the
                <code class="language-plaintext highlighter-rouge">&lt;br&gt;</code>
                HTML tag at the end of the line.
              </p>

              <p>
                There are two other options I don’t recommend using. CommonMark and
                a few other lightweight markup languages let you type a backslash
                (<code class="language-plaintext highlighter-rouge">\\</code>) at the
                end of the line, but not all Markdown applications support this, so
                it isn’t a great option from a compatibility perspective. And at
                least a couple lightweight markup languages don’t require anything
                at the end of the line — just type return and they’ll create a line
                break.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        First line with two spaces after. &nbsp;<br />
                        And the next line.<br /><br />

                        First line with the HTML tag after.&lt;br&gt;<br />
                        And the next line.<br /><br />
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        First line with a backslash after.\\<br />
                        And the next line.<br /><br />

                        First line with nothing after.<br />
                        And the next line.<br /><br />
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="emphasis">
                Emphasis<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#emphasis"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>You can add emphasis by making text bold or italic.</p>

              <h3 id="bold">
                Bold<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#bold"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To bold text, add two asterisks or underscores before and after a
                word or phrase. To bold the middle of a word for emphasis, add two
                asterisks without spaces around the letters.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >I just love **bold text**.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >I just love &lt;strong&gt;bold text&lt;/strong&gt;.</code
                      >
                    </td>
                    <td>I just love <strong>bold text</strong>.</td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >I just love __bold text__.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >I just love &lt;strong&gt;bold text&lt;/strong&gt;.</code
                      >
                    </td>
                    <td>I just love <strong>bold text</strong>.</td>
                  </tr>
                  <tr>
                    <td><code class="highlighter-rouge">Love**is**bold</code></td>
                    <td>
                      <code class="highlighter-rouge"
                        >Love&lt;strong&gt;is&lt;/strong&gt;bold</code
                      >
                    </td>
                    <td>Love<strong>is</strong>bold</td>
                  </tr>
                </tbody>
              </table>

              <h4 id="bold-best-practices">
                Bold Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#bold-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                Markdown applications don’t agree on how to handle underscores in
                the middle of a word. For compatibility, use asterisks to bold the
                middle of a word for emphasis.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"> Love**is**bold </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"> Love__is__bold </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="italic">
                Italic<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#italic"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To italicize text, add one asterisk or underscore before and after a
                word or phrase. To italicize the middle of a word for emphasis, add
                one asterisk without spaces around the letters.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >Italicized text is the *cat's meow*.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >Italicized text is the &lt;em&gt;cat's
                        meow&lt;/em&gt;.</code
                      >
                    </td>
                    <td>Italicized text is the <em>cat’s meow</em>.</td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >Italicized text is the _cat's meow_.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >Italicized text is the &lt;em&gt;cat's
                        meow&lt;/em&gt;.</code
                      >
                    </td>
                    <td>Italicized text is the <em>cat’s meow</em>.</td>
                  </tr>
                  <tr>
                    <td><code class="highlighter-rouge">A*cat*meow</code></td>
                    <td>
                      <code class="highlighter-rouge"
                        >A&lt;em&gt;cat&lt;/em&gt;meow</code
                      >
                    </td>
                    <td>A<em>cat</em>meow</td>
                  </tr>
                </tbody>
              </table>

              <h4 id="italic-best-practices">
                Italic Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#italic-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                Markdown applications don’t agree on how to handle underscores in
                the middle of a word. For compatibility, use asterisks to italicize
                the middle of a word for emphasis.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"> A*cat*meow </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge"> A_cat_meow </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="bold-and-italic">
                Bold and Italic<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#bold-and-italic"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To emphasize text with bold and italics at the same time, add three
                asterisks or underscores before and after a word or phrase. To bold
                and italicize the middle of a word for emphasis, add three asterisks
                without spaces around the letters.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is ***really important***.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is &lt;em&gt;&lt;strong&gt;really
                        important&lt;/strong&gt;&lt;/em&gt;.</code
                      >
                    </td>
                    <td>
                      This text is <em><strong>really important</strong></em
                      >.
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is ___really important___.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is &lt;em&gt;&lt;strong&gt;really
                        important&lt;/strong&gt;&lt;/em&gt;.</code
                      >
                    </td>
                    <td>
                      This text is <em><strong>really important</strong></em
                      >.
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is __*really important*__.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is &lt;em&gt;&lt;strong&gt;really
                        important&lt;/strong&gt;&lt;/em&gt;.</code
                      >
                    </td>
                    <td>
                      This text is <em><strong>really important</strong></em
                      >.
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is **_really important_**.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >This text is &lt;em&gt;&lt;strong&gt;really
                        important&lt;/strong&gt;&lt;/em&gt;.</code
                      >
                    </td>
                    <td>
                      This text is <em><strong>really important</strong></em
                      >.
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >This is really***very***important text.</code
                      >
                    </td>
                    <td>
                      <code class="highlighter-rouge"
                        >This is
                        really&lt;em&gt;&lt;strong&gt;very&lt;/strong&gt;&lt;/em&gt;important
                        text.</code
                      >
                    </td>
                    <td>
                      This is really<em><strong>very</strong></em
                      >important text.
                    </td>
                  </tr>
                </tbody>
              </table>

              <div class="alert alert-info">
                <svg
                  class="svg-inline--fa fa-info-circle fa-w-16"
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fas"
                  data-icon="info-circle"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  data-fa-i2svg=""
                >
                  <path
                    fill="currentColor"
                    d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"
                  ></path></svg
                ><!-- <i class="fas fa-info-circle"></i> -->
                <strong>Note:</strong> The order of the <code>em</code> and
                <code>strong</code> tags might be reversed depending on the Markdown
                processor you're using.
              </div>

              <h4 id="bold-and-italic-best-practices">
                Bold and Italic Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#bold-and-italic-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                Markdown applications don’t agree on how to handle underscores in
                the middle of a word. For compatibility, use asterisks to bold and
                italicize the middle of a word for emphasis.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        This is really***very***important text.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        This is really___very___important text.
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="blockquotes-1">
                Blockquotes<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#blockquotes-1"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To create a blockquote, add a
                <code class="language-plaintext highlighter-rouge">&gt;</code> in
                front of a paragraph.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>&gt; Dorothy followed her through many of the beautiful rooms in her castle.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <blockquote>
                <p>
                  Dorothy followed her through many of the beautiful rooms in her
                  castle.
                </p>
              </blockquote>

              <h3 id="blockquotes-with-multiple-paragraphs">
                Blockquotes with Multiple Paragraphs<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#blockquotes-with-multiple-paragraphs"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Blockquotes can contain multiple paragraphs. Add a
                <code class="language-plaintext highlighter-rouge">&gt;</code> on
                the blank lines between the paragraphs.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>&gt; Dorothy followed her through many of the beautiful rooms in her castle.
    &gt;
    &gt; The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <blockquote>
                <p>
                  Dorothy followed her through many of the beautiful rooms in her
                  castle.
                </p>

                <p>
                  The Witch bade her clean the pots and kettles and sweep the floor
                  and keep the fire fed with wood.
                </p>
              </blockquote>

              <h3 id="nested-blockquotes">
                Nested Blockquotes<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#nested-blockquotes"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Blockquotes can be nested. Add a
                <code class="language-plaintext highlighter-rouge">&gt;&gt;</code>
                in front of the paragraph you want to nest.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>&gt; Dorothy followed her through many of the beautiful rooms in her castle.
    &gt;
    &gt;&gt; The Witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <blockquote>
                <p>
                  Dorothy followed her through many of the beautiful rooms in her
                  castle.
                </p>

                <blockquote>
                  <p>
                    The Witch bade her clean the pots and kettles and sweep the
                    floor and keep the fire fed with wood.
                  </p>
                </blockquote>
              </blockquote>

              <h3 id="blockquotes-with-other-elements">
                Blockquotes with Other Elements<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#blockquotes-with-other-elements"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Blockquotes can contain other Markdown formatted elements. Not all
                elements can be used — you’ll need to experiment to see which ones
                work.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>&gt; #### The quarterly results look great!
    &gt;
    &gt; - Revenue was off the chart.
    &gt; - Profits were higher than ever.
    &gt;
    &gt;  *Everything* is going according to **plan**.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <blockquote>
                <h4 class="no-anchor" id="the-quarterly-results-look-great">
                  The quarterly results look great!
                </h4>

                <ul>
                  <li>Revenue was off the chart.</li>
                  <li>Profits were higher than ever.</li>
                </ul>

                <p>
                  <em>Everything</em> is going according to <strong>plan</strong>.
                </p>
              </blockquote>

              <h3 id="blockquotes-best-practices">
                Blockquotes Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#blockquotes-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                For compatibility, put blank lines before and after blockquotes.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        Try to put a blank line before...<br /><br />

                        &gt; This is a blockquote<br /><br />

                        ...and after a blockquote.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        Without blank lines, this might not look right.<br />
                        &gt; This is a blockquote<br />
                        Don't do this!
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="lists-1">
                Lists<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#lists-1"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>You can organize items into ordered and unordered lists.</p>

              <h3 id="ordered-lists">
                Ordered Lists<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#ordered-lists"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To create an ordered list, add line items with numbers followed by
                periods. The numbers don’t have to be in numerical order, but the
                list should start with the number one.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        1. First item<br />
                        2. Second item<br />
                        3. Third item<br />
                        4. Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ol&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ol&gt;
                      </code>
                    </td>
                    <td>
                      <ol>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>Third item</li>
                        <li>Fourth item</li>
                      </ol>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        1. First item<br />
                        1. Second item<br />
                        1. Third item<br />
                        1. Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ol&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ol&gt;
                      </code>
                    </td>
                    <td>
                      <ol>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>Third item</li>
                        <li>Fourth item</li>
                      </ol>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        1. First item<br />
                        8. Second item<br />
                        3. Third item<br />
                        5. Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ol&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ol&gt;
                      </code>
                    </td>
                    <td>
                      <ol>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>Third item</li>
                        <li>Fourth item</li>
                      </ol>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        1. First item<br />
                        2. Second item<br />
                        3. Third item<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;1. Indented item<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;2. Indented item<br />
                        4. Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ol&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;ol&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;Indented
                        item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;Indented
                        item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;/ol&gt;<br />
                        &nbsp;&nbsp;&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ol&gt;
                      </code>
                    </td>
                    <td>
                      <ol>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>
                          Third item
                          <ol>
                            <li>Indented item</li>
                            <li>Indented item</li>
                          </ol>
                        </li>
                        <li>Fourth item</li>
                      </ol>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h4 id="ordered-list-best-practices">
                Ordered List Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#ordered-list-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                CommonMark and a few other lightweight markup languages let you use
                a parenthesis (<code class="language-plaintext highlighter-rouge"
                  >)</code
                >) as a delimiter (e.g.,
                <code class="language-plaintext highlighter-rouge"
                  >1) First item</code
                >), but not all Markdown applications support this, so it isn’t a
                great option from a compatibility perspective. For compatibility,
                use periods only.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        1. First item<br />
                        2. Second item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        1) First item<br />
                        2) Second item
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="unordered-lists">
                Unordered Lists<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#unordered-lists"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To create an unordered list, add dashes (<code
                  class="language-plaintext highlighter-rouge"
                  >-</code
                >), asterisks (<code class="language-plaintext highlighter-rouge"
                  >*</code
                >), or plus signs (<code
                  class="language-plaintext highlighter-rouge"
                  >+</code
                >) in front of line items. Indent one or more items to create a
                nested list.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        - First item<br />
                        - Second item<br />
                        - Third item<br />
                        - Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ul&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ul&gt;
                      </code>
                    </td>
                    <td>
                      <ul>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>Third item</li>
                        <li>Fourth item</li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        * First item<br />
                        * Second item<br />
                        * Third item<br />
                        * Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ul&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ul&gt;
                      </code>
                    </td>
                    <td>
                      <ul>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>Third item</li>
                        <li>Fourth item</li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        + First item<br />
                        + Second item<br />
                        + Third item<br />
                        + Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ul&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ul&gt;
                      </code>
                    </td>
                    <td>
                      <ul>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>Third item</li>
                        <li>Fourth item</li>
                      </ul>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        - First item<br />
                        - Second item<br />
                        - Third item<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;- Indented item<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;- Indented item<br />
                        - Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ul&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;First item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Second item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Third item<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;ul&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;Indented
                        item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;Indented
                        item&lt;/li&gt;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&lt;/ul&gt;<br />
                        &nbsp;&nbsp;&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;Fourth item&lt;/li&gt;<br />
                        &lt;/ul&gt;
                      </code>
                    </td>
                    <td>
                      <ul>
                        <li>First item</li>
                        <li>Second item</li>
                        <li>
                          Third item
                          <ul>
                            <li>Indented item</li>
                            <li>Indented item</li>
                          </ul>
                        </li>
                        <li>Fourth item</li>
                      </ul>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h4 id="starting-unordered-list-items-with-numbers">
                Starting Unordered List Items With Numbers<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#starting-unordered-list-items-with-numbers"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                If you need to start an unordered list item with a number followed
                by a period, you can use a backslash (<code
                  class="language-plaintext highlighter-rouge"
                  >\\</code
                >) to <a href="#escaping-characters">escape</a> the period.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        - 1968\\. A great year!<br />
                        - I think 1969 was second best.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        &lt;ul&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;1968. A great year!&lt;/li&gt;<br />
                        &nbsp;&nbsp;&lt;li&gt;I think 1969 was second
                        best.&lt;/li&gt;<br />
                        &lt;/ul&gt;
                      </code>
                    </td>
                    <td>
                      <ul>
                        <li>1968. A great year!</li>
                        <li>I think 1969 was second best.</li>
                      </ul>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h4 id="unordered-list-best-practices">
                Unordered List Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#unordered-list-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                Markdown applications don’t agree on how to handle different
                delimiters in the same list. For compatibility, don’t mix and match
                delimiters in the same list — pick one and stick with it.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        - First item<br />
                        - Second item<br />
                        - Third item<br />
                        - Fourth item
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        + First item<br />
                        * Second item<br />
                        - Third item<br />
                        + Fourth item
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="adding-elements-in-lists">
                Adding Elements in Lists<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#adding-elements-in-lists"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To add another element in a list while preserving the continuity of
                the list, indent the element four spaces or one tab, as shown in the
                following examples.
              </p>

              <div class="alert alert-success">
                <svg
                  class="svg-inline--fa fa-lightbulb fa-w-11"
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fas"
                  data-icon="lightbulb"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 352 512"
                  data-fa-i2svg=""
                >
                  <path
                    fill="currentColor"
                    d="M96.06 454.35c.01 6.29 1.87 12.45 5.36 17.69l17.09 25.69a31.99 31.99 0 0 0 26.64 14.28h61.71a31.99 31.99 0 0 0 26.64-14.28l17.09-25.69a31.989 31.989 0 0 0 5.36-17.69l.04-38.35H96.01l.05 38.35zM0 176c0 44.37 16.45 84.85 43.56 115.78 16.52 18.85 42.36 58.23 52.21 91.45.04.26.07.52.11.78h160.24c.04-.26.07-.51.11-.78 9.85-33.22 35.69-72.6 52.21-91.45C335.55 260.85 352 220.37 352 176 352 78.61 272.91-.3 175.45 0 73.44.31 0 82.97 0 176zm176-80c-44.11 0-80 35.89-80 80 0 8.84-7.16 16-16 16s-16-7.16-16-16c0-61.76 50.24-112 112-112 8.84 0 16 7.16 16 16s-7.16 16-16 16z"
                  ></path></svg
                ><!-- <i class="fas fa-lightbulb"></i> -->
                <strong>Tip:</strong> If things don't appear the way you expect,
                double check that you've indented the elements in the list four
                spaces or one tab.
              </div>

              <h4 id="paragraphs">
                Paragraphs<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#paragraphs"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>* This is the first list item.
    * Here's the second list item.

        I need to add another paragraph below the second list item.

    * And here's the third list item.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <ul>
                <li>This is the first list item.</li>
                <li>
                  <p>Here’s the second list item.</p>

                  <p>I need to add another paragraph below the second list item.</p>
                </li>
                <li>And here’s the third list item.</li>
              </ul>

              <h4 id="blockquotes">
                Blockquotes<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#blockquotes"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>* This is the first list item.
    * Here's the second list item.

        &gt; A blockquote would look great below the second list item.

    * And here's the third list item.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <ul>
                <li>This is the first list item.</li>
                <li>
                  <p>Here’s the second list item.</p>

                  <blockquote>
                    <p>A blockquote would look great below the second list item.</p>
                  </blockquote>
                </li>
                <li>And here’s the third list item.</li>
              </ul>

              <h4 id="code-blocks-1">
                Code Blocks<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#code-blocks-1"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                <a href="#code-blocks">Code blocks</a> are normally indented four
                spaces or one tab. When they’re in a list, indent them eight spaces
                or two tabs.
              </p>

              <div class="language-text highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>1. Open the file.
    2. Find the following code block on line 21:

            &lt;html&gt;
              &lt;head&gt;
                &lt;title&gt;Test&lt;/title&gt;
              &lt;/head&gt;

    3. Update the title to match the name of your website.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <ol>
                <li>Open the file.</li>
                <li>
                  <p>Find the following code block on line 21:</p>

                  <div class="language-text highlighter-rouge">
                    <div class="highlight">
                      <pre class="highlight"><code> &lt;html&gt;
       &lt;head&gt;
         &lt;title&gt;Test&lt;/title&gt;
       &lt;/head&gt;
    </code></pre>
                    </div>
                  </div>
                </li>
                <li>Update the title to match the name of your website.</li>
              </ol>

              <h4 id="images">
                Images<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#images"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>1. Open the file containing the Linux mascot.
    2. Marvel at its beauty.

        ![Tux, the Linux mascot](/assets/images/tux.png)

    3. Close the file.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <ol>
                <li>Open the file containing the Linux mascot.</li>
                <li>
                  <p>Marvel at its beauty.</p>

                  <p>
                    <img
                      srcset="
                        https://mdg.imgix.net/assets/images/tux.png?auto=format&amp;fit=clip&amp;w=100           480w,
                        https://mdg.imgix.net/assets/images/tux.png?auto=format&amp;fit=clip&amp;q=40&amp;w=100 1080w
                      "
                      src="https://mdg.imgix.net/assets/images/tux.png"
                      class="img-fluid"
                      alt="Tux, the Linux mascot"
                      loading="lazy"
                      sizes="100vw"
                    />
                  </p>
                </li>
                <li>Close the file.</li>
              </ol>

              <h4 id="lists">
                Lists<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#lists"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                You can nest an unordered list in an ordered list, or vice versa.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>1. First item
    2. Second item
    3. Third item
        - Indented item
        - Indented item
    4. Fourth item
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <ol>
                <li>First item</li>
                <li>Second item</li>
                <li>
                  Third item
                  <ul>
                    <li>Indented item</li>
                    <li>Indented item</li>
                  </ul>
                </li>
                <li>Fourth item</li>
              </ol>

              <h2 id="code">
                Code<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#code"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To denote a word or phrase as code, enclose it in backticks (<code
                  class="language-plaintext highlighter-rouge"
                  >`</code
                >).
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge"
                        >At the command prompt, type `nano`.</code
                      >
                    </td>
                    <td>
                    </td>
                    <td>
                      At the command prompt, type
                      <code class="highlighter-rouge">nano</code>.
                    </td>
                  </tr>
                </tbody>
              </table>

              <h3 id="escaping-backticks">
                Escaping Backticks<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#escaping-backticks"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                If the word or phrase you want to denote as code includes one or
                more backticks, you can escape it by enclosing the word or phrase in
                double backticks (<code>``</code>).
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Markdown</th>
                    <th>HTML</th>
                    <th>Rendered Output</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><code>``Use `code` in your Markdown file.``</code></td>
                    <td>
                    </td>
                    <td><code>Use `code` in your Markdown file.</code></td>
                  </tr>
                </tbody>
              </table>

              <h3 id="code-blocks">
                Code Blocks<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#code-blocks"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To create code blocks, indent every line of the block by at least
                four spaces or one tab.
              </p>

              <div class="language-text highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>    &lt;html&gt;
          &lt;head&gt;
          &lt;/head&gt;
        &lt;/html&gt;
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <div class="language-text highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>&lt;html&gt;
      &lt;head&gt;
      &lt;/head&gt;
    &lt;/html&gt;
    </code></pre>
                </div>
              </div>

              <div class="alert alert-info">
                <svg
                  class="svg-inline--fa fa-info-circle fa-w-16"
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fas"
                  data-icon="info-circle"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  data-fa-i2svg=""
                >
                  <path
                    fill="currentColor"
                    d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"
                  ></path></svg
                ><!-- <i class="fas fa-info-circle"></i> -->
                <strong>Note:</strong> To create code blocks without indenting
                lines, use
                <a href="/extended-syntax/#fenced-code-blocks">fenced code blocks</a
                >.
              </div>

              <h2 id="horizontal-rules">
                Horizontal Rules<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#horizontal-rules"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To create a horizontal rule, use three or more asterisks (<code
                  class="language-plaintext highlighter-rouge"
                  >***</code
                >), dashes (<code class="language-plaintext highlighter-rouge"
                  >---</code
                >), or underscores (<code
                  class="language-plaintext highlighter-rouge"
                  >___</code
                >) on a line by themselves.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>***

    ---

    _________________
    </code></pre>
                </div>
              </div>

              <p>The rendered output of all three looks identical:</p>

              <hr />

              <h3 id="horizontal-rule-best-practices">
                Horizontal Rule Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#horizontal-rule-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                For compatibility, put blank lines before and after horizontal
                rules.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        Try to put a blank line before...<br /><br />

                        ---<br /><br />

                        ...and after a horizontal rule.
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        Without blank lines, this would be a heading.<br />
                        ---<br />
                        Don't do this!
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="links">
                Links<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#links"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To create a link, enclose the link text in brackets (e.g.,
                <code class="language-plaintext highlighter-rouge"
                  >[Duck Duck Go]</code
                >) and then follow it immediately with the URL in parentheses (e.g.,
                <code class="language-plaintext highlighter-rouge"
                  >(https://duckduckgo.com)</code
                >).
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>My favorite search engine is [Duck Duck Go](https://duckduckgo.com).
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                My favorite search engine is
                <a href="https://duckduckgo.com">Duck Duck Go</a>.
              </p>

              <div class="alert alert-info">
                <svg
                  class="svg-inline--fa fa-info-circle fa-w-16"
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fas"
                  data-icon="info-circle"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  data-fa-i2svg=""
                >
                  <path
                    fill="currentColor"
                    d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"
                  ></path></svg
                ><!-- <i class="fas fa-info-circle"></i> -->
                <strong>Note:</strong> To link to an element on the same page, see
                <a href="/extended-syntax/#linking-to-heading-ids"
                  >linking to heading IDs</a
                >. To create a link that opens in a new tab or window, see the
                section on <a href="/hacks/#link-targets">link targets</a>.
              </div>

              <h3 id="adding-titles">
                Adding Titles<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#adding-titles"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                You can optionally add a title for a link. This will appear as a
                tooltip when the user hovers over the link. To add a title, enclose
                it in quotation marks after the URL.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>My favorite search engine is [Duck Duck Go](https://duckduckgo.com "The best search engine for privacy").
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                My favorite search engine is
                <a
                  href="https://duckduckgo.com"
                  title="The best search engine for privacy"
                  >Duck Duck Go</a
                >.
              </p>

              <h3 id="urls-and-email-addresses">
                URLs and Email Addresses<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#urls-and-email-addresses"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To quickly turn a URL or email address into a link, enclose it in
                angle brackets.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre class="highlight"><code>&lt;https://www.markdownguide.org&gt;
    &lt;fake@example.com&gt;
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                <a href="https://www.markdownguide.org"
                  >https://www.markdownguide.org</a
                ><br />
                <a href="mailto:fake@example.com">fake@example.com</a>
              </p>

              <h3 id="formatting-links">
                Formatting Links<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#formatting-links"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To <a href="#emphasis">emphasize</a> links, add asterisks before and
                after the brackets and parentheses. To denote links as
                <a href="#code">code</a>, add backticks in the brackets.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>I love supporting the **[EFF](https://eff.org)**.
    This is the *[Markdown Guide](https://www.markdownguide.org)*.
    See the section on [`code`](#code).
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                I love supporting the
                <strong><a href="https://eff.org">EFF</a></strong
                >.<br />
                This is the
                <em><a href="https://www.markdownguide.org">Markdown Guide</a></em
                >.<br />
                See the section on
                <a href="#code"
                  ><code class="language-plaintext highlighter-rouge">code</code></a
                >.
              </p>

              <h3 id="reference-style-links">
                Reference-style Links<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#reference-style-links"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Reference-style links are a special kind of link that make URLs
                easier to display and read in Markdown. Reference-style links are
                constructed in two parts: the part you keep inline with your text
                and the part you store somewhere else in the file to keep the text
                easy to read.
              </p>

              <h4 id="formatting-the-first-part-of-the-link">
                Formatting the First Part of the Link<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#formatting-the-first-part-of-the-link"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                The first part of a reference-style link is formatted with two sets
                of brackets. The first set of brackets surrounds the text that
                should appear linked. The second set of brackets displays a label
                used to point to the link you’re storing elsewhere in your document.
              </p>

              <p>
                Although not required, you can include a space between the first and
                second set of brackets. The label in the second set of brackets is
                not case sensitive and can include letters, numbers, spaces, or
                punctuation.
              </p>

              <p>
                This means the following example formats are roughly equivalent for
                the first part of the link:
              </p>

              <ul>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[hobbit-hole][1]</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[hobbit-hole] [1]</code
                  >
                </li>
              </ul>

              <h4 id="formatting-the-second-part-of-the-link">
                Formatting the Second Part of the Link<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#formatting-the-second-part-of-the-link"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                The second part of a reference-style link is formatted with the
                following attributes:
              </p>

              <ol>
                <li>
                  The label, in brackets, followed immediately by a colon and at
                  least one space (e.g.,
                  <code class="language-plaintext highlighter-rouge">[label]: </code
                  >).
                </li>
                <li>
                  The URL for the link, which you can optionally enclose in angle
                  brackets.
                </li>
                <li>
                  The optional title for the link, which you can enclose in double
                  quotes, single quotes, or parentheses.
                </li>
              </ol>

              <p>
                This means the following example formats are all roughly equivalent
                for the second part of the link:
              </p>

              <ul>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit
                    lifestyles"</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle 'Hobbit
                    lifestyles'</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle (Hobbit
                    lifestyles)</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: &lt;https://en.wikipedia.org/wiki/Hobbit#Lifestyle&gt;
                    "Hobbit lifestyles"</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: &lt;https://en.wikipedia.org/wiki/Hobbit#Lifestyle&gt;
                    'Hobbit lifestyles'</code
                  >
                </li>
                <li>
                  <code class="language-plaintext highlighter-rouge"
                    >[1]: &lt;https://en.wikipedia.org/wiki/Hobbit#Lifestyle&gt;
                    (Hobbit lifestyles)</code
                  >
                </li>
              </ul>

              <p>
                You can place this second part of the link anywhere in your Markdown
                document. Some people place them immediately after the paragraph in
                which they appear while other people place them at the end of the
                document (like endnotes or footnotes).
              </p>

              <h4 id="an-example-putting-the-parts-together">
                An Example Putting the Parts Together<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#an-example-putting-the-parts-together"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h4>

              <p>
                Say you add a URL as a <a href="#links">standard URL link</a> to a
                paragraph and it looks like this in Markdown:
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends
    of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to
    eat: it was a [hobbit-hole](https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"), and that means comfort.
    </code></pre>
                </div>
              </div>

              <p>
                Though it may point to interesting additional information, the URL
                as displayed really doesn’t add much to the existing raw text other
                than making it harder to read. To fix that, you could format the URL
                like this instead:
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends
    of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to
    eat: it was a [hobbit-hole][1], and that means comfort.

    [1]: &lt;https://en.wikipedia.org/wiki/Hobbit#Lifestyle&gt; "Hobbit lifestyles"
    </code></pre>
                </div>
              </div>

              <p>
                In both instances above, the rendered output would be identical:
              </p>

              <blockquote>
                <p>
                  In a hole in the ground there lived a hobbit. Not a nasty, dirty,
                  wet hole, filled with the ends of worms and an oozy smell, nor yet
                  a dry, bare, sandy hole with nothing in it to sit down on or to
                  eat: it was a
                  <a
                    href="https://en.wikipedia.org/wiki/Hobbit#Lifestyle"
                    title="Hobbit lifestyles"
                    >hobbit-hole</a
                  >, and that means comfort.
                </p>
              </blockquote>

              <p>and the HTML for the link would be:</p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>&lt;a href="https://en.wikipedia.org/wiki/Hobbit#Lifestyle" title="Hobbit lifestyles"&gt;hobbit-hole&lt;/a&gt;
    </code></pre>
                </div>
              </div>

              <h3 id="link-best-practices">
                Link Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#link-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                Markdown applications don’t agree on how to handle spaces in the
                middle of a URL. For compatibility, try to URL encode any spaces
                with <code class="language-plaintext highlighter-rouge">%20</code>.
                Alternatively, if your Markdown application
                <a href="#html">supports HTML</a>, you could use the
                <code class="language-plaintext highlighter-rouge">a</code> HTML
                tag.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        [link](https://www.example.com/my%20great%20page)<br /><br />

                        &lt;a href="https://www.example.com/my great
                        page"&gt;link&lt;/a&gt;<br /><br />
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        [link](https://www.example.com/my great page)<br /><br />
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <p>
                Parentheses in the middle of a URL can also be problematic. For
                compatibility, try to URL encode the opening parenthesis (<code
                  class="language-plaintext highlighter-rouge"
                  >(</code
                >) with
                <code class="language-plaintext highlighter-rouge">%28</code> and
                the closing parenthesis (<code
                  class="language-plaintext highlighter-rouge"
                  >)</code
                >) with
                <code class="language-plaintext highlighter-rouge">%29</code>.
                Alternatively, if your Markdown application
                <a href="#html">supports HTML</a>, you could use the
                <code class="language-plaintext highlighter-rouge">a</code> HTML
                tag.
              </p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>✅&nbsp; Do this</th>
                    <th>❌&nbsp; Don't do this</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <code class="highlighter-rouge">
                        [a
                        novel](https://en.wikipedia.org/wiki/The_Milagro_Beanfield_War_%28novel%29)<br /><br />

                        &lt;a
                        href="https://en.wikipedia.org/wiki/The_Milagro_Beanfield_War_(novel)"&gt;a
                        novel&lt;/a&gt;<br /><br />
                      </code>
                    </td>
                    <td>
                      <code class="highlighter-rouge">
                        [a
                        novel](https://en.wikipedia.org/wiki/The_Milagro_Beanfield_War_(novel))
                      </code>
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="images-1">
                Images<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#images-1"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To add an image, add an exclamation mark (<code
                  class="language-plaintext highlighter-rouge"
                  >!</code
                >), followed by alt text in brackets, and the path or URL to the
                image asset in parentheses. You can optionally add a title in
                quotation marks after the path or URL.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>![The San Juan Mountains are beautiful!](/assets/images/san-juan-mountains.jpg "San Juan Mountains")
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                <img
                  srcset="
                    https://mdg.imgix.net/assets/images/san-juan-mountains.jpg?auto=format&amp;fit=clip&amp;w=480            480w,
                    https://mdg.imgix.net/assets/images/san-juan-mountains.jpg?auto=format&amp;fit=clip&amp;q=40&amp;w=1080 1080w
                  "
                  src="https://mdg.imgix.net/assets/images/san-juan-mountains.jpg"
                  class="img-fluid"
                  title="San Juan Mountains"
                  alt="The San Juan Mountains are beautiful!"
                  loading="lazy"
                  sizes="100vw"
                />
              </p>

              <div class="alert alert-info">
                <svg
                  class="svg-inline--fa fa-info-circle fa-w-16"
                  aria-hidden="true"
                  focusable="false"
                  data-prefix="fas"
                  data-icon="info-circle"
                  role="img"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  data-fa-i2svg=""
                >
                  <path
                    fill="currentColor"
                    d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"
                  ></path></svg
                ><!-- <i class="fas fa-info-circle"></i> -->
                <strong>Note:</strong> To resize an image, see the section on
                <a href="/hacks/#image-size">image size</a>. To add a caption, see
                the section on <a href="/hacks/#image-captions">image captions</a>.
              </div>

              <h3 id="linking-images">
                Linking Images<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#linking-images"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                To add a link to an image, enclose the Markdown for the image in
                brackets, and then add the link in parentheses.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>[![An old rock in the desert](/assets/images/shiprock.jpg "Shiprock, New Mexico by Beau Rogers")](https://www.flickr.com/photos/beaurogers/31833779864/in/photolist-Qv3rFw-34mt9F-a9Cmfy-5Ha3Zi-9msKdv-o3hgjr-hWpUte-4WMsJ1-KUQ8N-deshUb-vssBD-6CQci6-8AFCiD-zsJWT-nNfsgB-dPDwZJ-bn9JGn-5HtSXY-6CUhAL-a4UTXB-ugPum-KUPSo-fBLNm-6CUmpy-4WMsc9-8a7D3T-83KJev-6CQ2bK-nNusHJ-a78rQH-nw3NvT-7aq2qf-8wwBso-3nNceh-ugSKP-4mh4kh-bbeeqH-a7biME-q3PtTf-brFpgb-cg38zw-bXMZc-nJPELD-f58Lmo-bXMYG-bz8AAi-bxNtNT-bXMYi-bXMY6-bXMYv)
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <div>
                <a
                  href="https://www.flickr.com/photos/beaurogers/31833779864/in/photolist-Qv3rFw-34mt9F-a9Cmfy-5Ha3Zi-9msKdv-o3hgjr-hWpUte-4WMsJ1-KUQ8N-deshUb-vssBD-6CQci6-8AFCiD-zsJWT-nNfsgB-dPDwZJ-bn9JGn-5HtSXY-6CUhAL-a4UTXB-ugPum-KUPSo-fBLNm-6CUmpy-4WMsc9-8a7D3T-83KJev-6CQ2bK-nNusHJ-a78rQH-nw3NvT-7aq2qf-8wwBso-3nNceh-ugSKP-4mh4kh-bbeeqH-a7biME-q3PtTf-brFpgb-cg38zw-bXMZc-nJPELD-f58Lmo-bXMYG-bz8AAi-bxNtNT-bXMYi-bXMY6-bXMYv"
                  class="no-underline"
                >
                  <img
                    srcset="
                      https://mdg.imgix.net/assets/images/shiprock.jpg?auto=format&amp;fit=clip&amp;w=480            480w,
                      https://mdg.imgix.net/assets/images/shiprock.jpg?auto=format&amp;fit=clip&amp;q=40&amp;w=1080 1080w
                    "
                    src="https://mdg.imgix.net/assets/images/shiprock.jpg"
                    class="img-fluid"
                    title="Shiprock, New Mexico by Beau Rogers"
                    alt="An old rock in the desert"
                    loading="lazy"
                    sizes="100vw"
                  />
                </a>
              </div>

              <h2 id="escaping-characters">
                Escaping Characters<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#escaping-characters"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                To display a literal character that would otherwise be used to
                format text in a Markdown document, add a backslash (<code
                  class="language-plaintext highlighter-rouge"
                  >\\</code
                >) in front of the character.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>\\* Without the backslash, this would be a bullet in an unordered list.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                * Without the backslash, this would be a bullet in an unordered
                list.
              </p>

              <h3 id="characters-you-can-escape">
                Characters You Can Escape<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#characters-you-can-escape"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>You can use a backslash to escape the following characters.</p>

              <table class="table table-bordered">
                <thead class="thead-light">
                  <tr>
                    <th>Character</th>
                    <th>Name</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>\\</td>
                    <td>backslash</td>
                  </tr>
                  <tr>
                    <td>`</td>
                    <td>
                      backtick (see also
                      <a href="#escaping-backticks">escaping backticks in code</a>)
                    </td>
                  </tr>
                  <tr>
                    <td>*</td>
                    <td>asterisk</td>
                  </tr>
                  <tr>
                    <td>_</td>
                    <td>underscore</td>
                  </tr>
                  <tr>
                    <td>{ }</td>
                    <td>curly braces</td>
                  </tr>
                  <tr>
                    <td>[ ]</td>
                    <td>brackets</td>
                  </tr>
                  <tr>
                    <td>&lt; &gt;</td>
                    <td>angle brackets</td>
                  </tr>
                  <tr>
                    <td>( )</td>
                    <td>parentheses</td>
                  </tr>
                  <tr>
                    <td>#</td>
                    <td>pound sign</td>
                  </tr>
                  <tr>
                    <td>+</td>
                    <td>plus sign</td>
                  </tr>
                  <tr>
                    <td>-</td>
                    <td>minus sign (hyphen)</td>
                  </tr>
                  <tr>
                    <td>.</td>
                    <td>dot</td>
                  </tr>
                  <tr>
                    <td>!</td>
                    <td>exclamation mark</td>
                  </tr>
                  <tr>
                    <td>|</td>
                    <td>
                      pipe (see also
                      <a href="/extended-syntax/#escaping-pipe-characters-in-tables"
                        >escaping pipe in tables</a
                      >)
                    </td>
                  </tr>
                </tbody>
              </table>

              <h2 id="html">
                HTML<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#html"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h2>

              <p>
                Many Markdown applications allow you to use HTML tags in
                Markdown-formatted text. This is helpful if you prefer certain HTML
                tags to Markdown syntax. For example, some people find it easier to
                use HTML tags for images. Using HTML is also helpful when you need
                to change the attributes of an element, like specifying the
                <a href="/hacks/#color">color of text</a> or changing the width of
                an image.
              </p>

              <p>
                To use HTML, place the tags in the text of your Markdown-formatted
                file.
              </p>

              <div class="language-plaintext highlighter-rouge">
                <div class="highlight">
                  <pre
                    class="highlight"
                  ><code>This **word** is bold. This &lt;em&gt;word&lt;/em&gt; is italic.
    </code></pre>
                </div>
              </div>

              <p>The rendered output looks like this:</p>

              <p>
                This <strong>word</strong> is bold. This <em>word</em> is italic.
              </p>

              <h3 id="html-best-practices">
                HTML Best Practices<a
                  class="anchorjs-link"
                  aria-label="Anchor"
                  data-anchorjs-icon=""
                  href="#html-best-practices"
                  style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em"
                ></a>
              </h3>

              <p>
                For security reasons, not all Markdown applications support HTML in
                Markdown documents. When in doubt, check your Markdown application’s
                documentation. Some applications support only a subset of HTML tags.
              </p>

              <p>
                Use blank lines to separate block-level HTML elements like
                <code class="language-plaintext highlighter-rouge">&lt;div&gt;</code
                >,
                <code class="language-plaintext highlighter-rouge"
                  >&lt;table&gt;</code
                >,
                <code class="language-plaintext highlighter-rouge">&lt;pre&gt;</code
                >, and
                <code class="language-plaintext highlighter-rouge">&lt;p&gt;</code>
                from the surrounding content. Try not to indent the tags with tabs
                or spaces — that can interfere with the formatting.
              </p>

              <p>
                You can’t use Markdown syntax inside block-level HTML tags. For
                example,
                <code class="language-plaintext highlighter-rouge"
                  >&lt;p&gt;italic and **bold**&lt;/p&gt;</code
                >
                won’t work.
              </p>

              <div
                class="card bg-light mb-3"
                style="max-width: 100%; margin-top: 50px"
              >
                <div class="row no-gutters">
                  <div class="col-md-3">
                    <a href="/book/">
                      <img
                        srcset="
                          https://mdg.imgix.net/assets/images/book-cover.jpg?auto=format&amp;fit=clip&amp;w=480            480w,
                          https://mdg.imgix.net/assets/images/book-cover.jpg?auto=format&amp;fit=clip&amp;q=40&amp;w=1080 1080w
                        "
                        src="https://mdg.imgix.net/assets/images/book-cover.jpg"
                        class="img-fluid"
                        alt="Markdown Guide book cover"
                        loading="lazy"
                        sizes="100vw"
                      />
                    </a>
                  </div>
                  <div class="col-md-9">
                    <div class="card-body" style="padding-left: 6%">
                      <h5
                        class="card-title no-anchor"
                        data-toc-skip=""
                        id="take-your-markdown-skills-to-the-next-level"
                      >
                        Take your Markdown skills to the next level.
                      </h5>
                      <p class="card-text">
                        Learn Markdown in 60 pages. Designed for both novices and
                        experts, <em>The Markdown Guide</em> book is a comprehensive
                        reference that has everything you need to get started and
                        master Markdown syntax.
                      </p>
                      <a
                        class="btn btn-success"
                        style="margin-top: 5px; margin-right: 15px"
                        href="/book/"
                        >Get the Book</a
                      >
                    </div>
                  </div>
                </div>
              </div>

              <div class="card border-info" style="margin-top: 50px">
                <h6
                  class="card-header no-anchor bg-info text-white"
                  data-toc-skip=""
                >
                  Want to learn more Markdown?
                </h6>
                <div class="card-body">
                  <p class="card-text">
                    Don't stop now! 🚀 Star the
                    <a href="https://github.com/mattcone/markdown-guide"
                      >GitHub repository</a
                    >
                    and then enter your email address below to receive new Markdown
                    tutorials via email. No spam!
                  </p>

                  <form
                    method="post"
                    action="https://pika.forklabs.com/subscription/form"
                    class="listmonk-form"
                  >
                    <div class="form-group" style="margin-top: 20px">
                      <input type="hidden" name="nonce" />
                      <input
                        id="b7668"
                        type="hidden"
                        name="l"
                        value="b766881d-27fd-43a8-9b76-1b74f2a76763"
                      />
                      <input
                        type="email"
                        class="form-control form-control-lg"
                        name="email"
                        placeholder="Your email address"
                      />
                    </div>
                    <button type="submit" class="btn btn-success">
                      Stay updated
                    </button>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-3 d-none d-md-block" id="sidebar">
              <nav id="toc" data-toggle="toc" class="sticky-top" style="z-index: 1">
                <ul class="nav navbar-nav">
                  <li><a class="nav-link" href="#overview">Overview</a></li>
                  <li>
                    <a class="nav-link" href="#headings">Headings</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#alternate-syntax"
                          >Alternate Syntax</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#heading-best-practices"
                          >Heading Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#paragraphs-1">Paragraphs</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#paragraph-best-practices"
                          >Paragraph Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#line-breaks">Line Breaks</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#line-break-best-practices"
                          >Line Break Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#emphasis">Emphasis</a>
                    <ul class="nav navbar-nav">
                      <li><a class="nav-link" href="#bold">Bold</a></li>
                      <li><a class="nav-link" href="#italic">Italic</a></li>
                      <li>
                        <a class="nav-link" href="#bold-and-italic"
                          >Bold and Italic</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#blockquotes-1">Blockquotes</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a
                          class="nav-link"
                          href="#blockquotes-with-multiple-paragraphs"
                          >Blockquotes with Multiple Paragraphs</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#nested-blockquotes"
                          >Nested Blockquotes</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#blockquotes-with-other-elements"
                          >Blockquotes with Other Elements</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#blockquotes-best-practices"
                          >Blockquotes Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#lists-1">Lists</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#ordered-lists">Ordered Lists</a>
                      </li>
                      <li>
                        <a class="nav-link" href="#unordered-lists"
                          >Unordered Lists</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#adding-elements-in-lists"
                          >Adding Elements in Lists</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#code">Code</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#escaping-backticks"
                          >Escaping Backticks</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#code-blocks">Code Blocks</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#horizontal-rules"
                      >Horizontal Rules</a
                    >
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#horizontal-rule-best-practices"
                          >Horizontal Rule Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#links">Links</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#adding-titles">Adding Titles</a>
                      </li>
                      <li>
                        <a class="nav-link" href="#urls-and-email-addresses"
                          >URLs and Email Addresses</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#formatting-links"
                          >Formatting Links</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#reference-style-links"
                          >Reference-style Links</a
                        >
                      </li>
                      <li>
                        <a class="nav-link" href="#link-best-practices"
                          >Link Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#images-1">Images</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#linking-images"
                          >Linking Images</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#escaping-characters"
                      >Escaping Characters</a
                    >
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#characters-you-can-escape"
                          >Characters You Can Escape</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="nav-link" href="#html">HTML</a>
                    <ul class="nav navbar-nav">
                      <li>
                        <a class="nav-link" href="#html-best-practices"
                          >HTML Best Practices</a
                        >
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>

              <div style="position: fixed; bottom: 0px; right: 0px">
                <div
                  data-ea-publisher="markdownguide"
                  data-ea-type="image"
                  class="loaded"
                >
                  <div class="ea-placement ea-type-image">
                    <div class="ea-content">
                      <a
                        href="https://server.ethicalads.io/proxy/click/4708/0dccf4b6-30c2-408a-af59-c7953afca15b/"
                        rel="nofollow noopener sponsored"
                        target="_blank"
                        ><img
                          src="https://media.ethicalads.io/media/images/2023/05/Ethical_240x180-2.png"
                          alt="Sponsored: Algolia"
                      /></a>
                      <div class="ea-text">
                        <a
                          href="https://server.ethicalads.io/proxy/click/4708/0dccf4b6-30c2-408a-af59-c7953afca15b/"
                          rel="nofollow noopener sponsored"
                          target="_blank"
                          ><strong class="ea-headline">AI Search - </strong
                          ><span class="ea-body"
                            >Build search &amp; discovery experiences w/ APIs,
                            libraries, CLI &amp; More</span
                          ><strong class="ea-cta"> Sign up for Free</strong></a
                        >
                      </div>
                    </div>
                    <div class="ea-callout">
                      <a
                        rel="nofollow noopener"
                        target="_blank"
                        href="https://www.ethicalads.io/advertisers/topics/frontend-web/?ref=ea-image"
                        >Ads by EthicalAds</a
                      >
                    </div>
                  </div>
                  <img
                    src="https://server.ethicalads.io/proxy/view/4708/0dccf4b6-30c2-408a-af59-c7953afca15b/"
                    class="ea-pixel"
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </body>
    </html>
    """

    static let page2 = """
    <h1 id="multimarkdownsyntaxandformatting">MultiMarkdown Syntax and Formatting</h1>

    <hr />

    <h6 id="webresources%3A">Web Resources:</h6>

    <ul>
    <li><a href="https://rawgit.com/fletcher/MultiMarkdown-6-Syntax-Guide/master/index.html">MultiMarkdown v6 Syntax Guide</a></li>
    <li><a href="http://fletcher.github.com/peg-multimarkdown/mmd-manual.pdf">Fletcher Penney&#8217;s Syntax Guide (PDF)</a></li>
    <li><a href="http://github.com/fletcher/MultiMarkdown/blob/master/Documentation/Markdown%20Syntax.md">Fletcher Penney&#8217;s Syntax Guide (MD)</a></li>
    <li><a href="http://bywordapp.com/markdown/syntax.html">Byword&#8217;s Guide</a></li>
    </ul>

    <h6 id="localresources%3A">Local Resources:</h6>

    <ul>
    <li><a href="/Applications/%E2%80%A2%20Usability/MultiMarkdown/-%20Info%20-%20MultiMarkdown/MMD%20User's%20Guide%20%7C%20v%203.0.pdfd/">MMD User&#8217;s Guide.pdf</a></li>
    </ul>

    <h6 id="todo%3A">To Do:</h6>

    <ul>
    <li>Citations</li>
    </ul>

    <hr />

    <h3 id="section-contents">Contents</h3>

    <ol>
    <li><p><a href="#section-basictext">Basic Text</a> </p>

    <ul>
    <li><a href="#xref-blockquotes">Blockquotes</a></li>
    <li><a href="#xref-xrefs">Cross-References</a></li>
    <li><a href="#xref-attributes">Custom Attributes</a></li>
    <li><a href="#xref-footnotes">Footnotes</a></li>
    <li><a href="#xref-headers">Headers</a></li>
    <li><a href="#xref-hr">Horizontal Rules</a></li>
    <li><a href="#xref-images">Images</a></li>
    <li><a href="#xref-links">Links</a></li>
    <li><a href="#xref-emphasis">Phrase Emphasis</a></li>
    </ul></li>
    <li><p><a href="#section-code">Code</a></p>

    <ul>
    <li><a href="#xref-codespans">Code Spans</a></li>
    <li><a href="#xref-code">Pre-formatted Code Blocks</a></li>
    </ul></li>
    <li><p><a href="#section-lists-tables">Lists and Tables</a> </p>

    <ul>
    <li><a href="#xref-lists">Lists</a></li>
    <li><a href="#xref-tables">Tables</a></li>
    </ul></li>
    <li><p><a href="#xref-metadata">Metadata</a> </p></li>
    <li><p>[MathJax][xref-mathjax]</p></li>
    <li><p><a href="#section-various">Various</a> </p>

    <ul>
    <li><a href="#xref-escape">Escaping Characters</a></li>
    <li><a href="#xref-hardbreaks">Manual Line Breaks</a></li>
    </ul></li>
    </ol>

    <hr />

    <h1 id="section-basictext">Basic Text</h1>

    <h2 id="xref-blockquotes">Blockquotes</h2>

    <h4 id="example">Example</h4>

    <pre><code>&gt; Email-style angle brackets
    &gt; are used for _blockquotes_.

    &gt; &gt; And, they can be nested.

    &gt; #### Headers in blockquotes
    &gt;
    &gt; * You can **quote a list.**
    &gt; * Etc.
    </code></pre>

    <h4 id="result">Result</h4>

    <blockquote>
    <p>Email-style angle brackets<br/>
    are used for <em>blockquotes</em>.</p>

    <blockquote>
    <p>And, they can be nested.</p>
    </blockquote>

    <h4 id="headersinblockquotes">Headers in blockquotes</h4>

    <ul>
    <li>You can <strong>quote a list.</strong></li>
    <li>Etc.</li>
    </ul>
    </blockquote>

    <hr />

    <h2 id="xref-xrefs">Cross-References</h2>

    <p>Cross-references will become your new best friend when writing long documents. They will highly improve the navigability of the generated documents by giving the reader links to jump across sections with a single click.</p>

    <h4 id="section-mmd-xrefs-example">Example</h4>

    <pre><code>Clicking [here][xref-headers] will lead you to the **Headers** section.
    </code></pre>

    <h4 id="section-mmd-xrefs-result">Result</h4>

    <p>Clicking <a href="#xref-headers">here</a> will lead you do the <strong>Headers</strong> section.</p>

    <hr />

    <h2 id="xref-attributes">Custom Attributes</h2>

    <p>MultiMarkdown introduces an unobtrusive way of adding custom attributes to images and links, allowing you to change they way they are displayed.</p>

    <blockquote>
    <p><strong>NOTE</strong><br/>
    This is not available for inline links or images.</p>
    </blockquote>

    <h4 id="section-mmd-attributes-example">Example</h4>

    <pre><code>The original image is 128x128 and contains no shadow.
    ![Original icon][img-icon_original]

    It will be displayed as 96x96 with a subtle shadow.
    ![Styled icon][img-icon_styled]

    [img-icon_original]: img/icon128.png &quot;B&quot;
    [img-icon_styled]: img/icon128.png &quot;B&quot; width=&quot;96px&quot; height=&quot;96px&quot;
    class=&quot;shadow&quot;
    </code></pre>

    <h4 id="section-mmd-attributes-result">Result</h4>

    <p>The original image is 128x128 and contains no shadow.</p>

    <figure>
    <img src="img/icon128.png" alt="Original icon" id="img-icon_original" title="A" />
    <figcaption>Original icon</figcaption>
    </figure>

    <p>It will be displayed as 96x96 with a subtle shadow.</p>

    <figure>
    <img src="img/icon128.png" alt="Styled icon" id="img-icon_styled" title="B" style="height:96px;width:96px;" class="shadow" />
    <figcaption>Styled icon</figcaption>
    </figure>

    <hr />

    <h2 id="xref-footnotes">Footnotes</h2>

    <p>Footnotes are a simple, yet effective way of conveying non-crucial information to the reader.</p>

    <p>Rather than parenthesizing a side note or place it between em-dashes &#8211; as unimportant as it is, the reader will go through it, just like you did now &#8211; you can defer its reading and expand on your thoughts there.</p>

    <h4 id="example">Example</h4>

    <pre><code>Clicking this number[^fn-sample_footnote] will lead you to a footnote.

    [^fn-sample_footnote]: Handy! Now click the return link to go back.
    </code></pre>

    <h4 id="section-mmd-footnotes-result">Result</h4>

    <p>Clicking this number<a href="#fn:3832" id="fnref:3832" title="see footnote" class="footnote">[1]</a> will lead you to a footnote.</p>

    <hr />

    <h2 id="xref-headers">Headers</h2>

    <h4 id="example">Example</h4>

    <p>Setext-style:</p>

    <pre><code>Header 1
    ========

    Header 2
    --------
    </code></pre>

    <p>atx-style (closing #&#8217;s are optional):</p>

    <pre><code># Header 1 #

    ## Header 2 ##

    ###### Header 6
    </code></pre>

    <h4 id="result">Result</h4>

    <h1 id="level1">Level 1</h1>

    <h2 id="level2">Level 2</h2>

    <h3 id="level3">Level 3</h3>

    <h4 id="level4">Level 4</h4>

    <h5 id="level5">Level 5</h5>

    <h6 id="level6">Level 6</h6>

    <hr />

    <h2 id="xref-hr">Horizontal Rules</h2>

    <h4 id="example">Example</h4>

    <p>Three or more dashes or asterisks:</p>

    <pre><code>---

    * * *

    - - - -
    </code></pre>

    <h4 id="result">Result</h4>

    <hr />

    <h2 id="xref-images">Images</h2>

    <p>Images are specified similarly to links, with the addition of a leading <code>!</code></p>

    <p>Inline Image:</p>

    <pre><code>![alt text](/path/img.jpg)
    </code></pre>

    <p>Inline Image (with optional title):</p>

    <pre><code>![alt text](/path/img.jpg &quot;Title&quot;)
    </code></pre>

    <p>Reference-style:</p>

    <pre><code>![alt text][id]

    [id]: /url/to/img.jpg &quot;Title&quot;
    </code></pre>

    <hr />

    <h2 id="xref-links">Links</h2>

    <p>Inline:</p>

    <pre><code>An [example](http://url.com/)
    An [example with a title](http://url.com/ &quot;Title&quot;)
    </code></pre>

    <p>Reference-style labels (titles are optional): </p>

    <pre><code>An [example][id].
    </code></pre>

    <p>Then, anywhere else in the doc, define the link: </p>

    <pre><code>[id]: http://example.com/  &quot;Title&quot;
    </code></pre>

    <hr />

    <h2 id="xref-emphasis">Phrase Emphasis</h2>

    <h4 id="example">Example</h4>

    <pre><code>*italic*   **bold**
    _italic_   __bold__
    </code></pre>

    <h4 id="result">Result</h4>

    <p><em>This</em> is italicized<br/>
    <strong>This</strong> is bolded<br/>
    And <strong><em>this</em> is both italicized <em>and</em> bolded</strong></p>

    <hr />

    <h1 id="section-code">Code</h1>

    <h2 id="xref-codespans">Code Spans</h2>

    <hr />

    <h2 id="xref-code">Pre-formatted Code Blocks</h2>

    <p>Indent every line of a code block by at least 4 spaces or 1 tab.</p>

    <pre><code>This is a normal paragraph.

        This is a preformatted
        code block.
    </code></pre>

    <hr />

    <h1 id="section-lists-tables">Lists and Tables</h1>

    <h2 id="xref-lists">Lists</h2>

    <h4 id="example">Example</h4>

    <p>Ordered List (actual numbers used do not matter)</p>

    <pre><code>1. Item 1
    1. Item 2
    5. Item 3
    </code></pre>

    <p>Unordered List</p>

    <pre><code>* Item 1
    + Item 2
    - Item 3
    </code></pre>

    <h4 id="result">Result</h4>

    <p>Ordered List</p>

    <ol>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
    </ol>

    <p>Unordered List</p>

    <ul>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
    </ul>

    <h4 id="morecomplexformattingoflists">More Complex Formatting of Lists</h4>

    <p>List items may consist of multiple paragraphs. Each subsequent paragraph in a list item must be indented by either 4 spaces or one tab.</p>

    <h4 id="example">Example</h4>

    <p>Unordered, with paragraphs:</p>

    <pre><code>*   A list item.

        With multiple paragraphs.

    *   Bar
    </code></pre>

    <h4 id="result">Result</h4>

    <ul>
    <li><p>A list item.</p>

    <p>With multiple paragraphs.</p></li>
    <li><p>Bar</p></li>
    </ul>

    <p>You can nest lists:</p>

    <ul>
    <li>Abacus

    <ul>
    <li>answer</li>
    </ul></li>
    <li>Bubbles

    <ol>
    <li>bunk</li>
    <li>bupkis

    <ul>
    <li>BELITTLER</li>
    </ul></li>
    <li>burper</li>
    </ol></li>
    <li>Cunning</li>
    </ul>

    <hr />

    <h2 id="xref-tables">Tables</h2>

    <p>Tables are perfect to display structured data in rows and columns. MultiMarkdown supports the generation of tables by using a couple of simple rules alongside the use of the pipe character &#8211; <code>|</code>.</p>

    <h4 id="section-mmd-tables-example">Example</h4>

    <pre><code>| First Header  | Second Header | Third Header         |
    | :------------ | :-----------: | -------------------: |
    | First row     | Data          | Very long data entry |
    | Second row    | **Cell**      | *Cell*               |
    | Third row     | Cell that spans across two columns  ||
    [Table caption, works as a reference][section-mmd-tables-table1]
    </code></pre>

    <h4 id="section-mmd-tables-result">Result</h4>

    <table>
    <caption id="section-mmd-tables-table1">Table caption, works as a reference</caption>
    <colgroup>
    <col style="text-align:left;"/>
    <col style="text-align:center;"/>
    <col style="text-align:right;"/>
    </colgroup>

    <thead>
    <tr>
        <th style="text-align:left;">First Header</th>
        <th style="text-align:center;">Second Header</th>
        <th style="text-align:right;">Third Header</th>
    </tr>
    </thead>

    <tbody>
    <tr>
        <td style="text-align:left;">First row</td>
        <td style="text-align:center;">Data</td>
        <td style="text-align:right;">Very long data entry</td>
    </tr>
    <tr>
        <td style="text-align:left;">Second row</td>
        <td style="text-align:center;"><strong>Cell</strong></td>
        <td style="text-align:right;"><em>Cell</em></td>
    </tr>
    <tr>
        <td style="text-align:left;">Third row</td>
        <td style="text-align:center;" colspan="2">Cell that spans across two columns</td>
    </tr>
    </tbody>
    </table>

    <h4 id="section-mmd-tables-structure">Structure</h4>

    <p>If you are familiar with HTML tables, you&#8217;ll instantly recognize the structure of the table syntax. All tables must begin with one or more <strong>rows</strong> of <strong>headers</strong>, and each <strong>row</strong> may have one or more <strong>columns</strong>.</p>

    <p>These are the most important rules you&#8217;ll be dealing with:</p>

    <ul>
    <li>There must be at least one <code>|</code> per line;</li>
    <li>After the header rows, there must be a line containing only <code>|</code>, <code>-</code>, <code>:</code>, <code>.</code>, or spaces;</li>
    <li>Cell content must be on one line only;</li>
    <li>Columns are separated by <code>|</code>.</li>
    </ul>

    <h4 id="section-mmd-tables-alignment">Alignment</h4>

    <p>To align the data cells on the table, you need to introduce a special row right after the headers, that will determine how the following rows &#8211; the data rows &#8211; will be aligned.</p>

    <pre><code>| Header One | Header Two | Header Three | Header Four |
    | ---------- | :--------- | :----------: | ----------: |
    | Default    | Left       | Center       | Right       |
    </code></pre>

    <table>
    <colgroup>
    <col style="text-align:left;"/>
    <col style="text-align:left;"/>
    <col style="text-align:center;"/>
    <col style="text-align:right;"/>
    </colgroup>

    <thead>
    <tr>
        <th style="text-align:left;">Header One</th>
        <th style="text-align:left;">Header Two</th>
        <th style="text-align:center;">Header Three</th>
        <th style="text-align:right;">Header Four</th>
    </tr>
    </thead>

    <tbody>
    <tr>
        <td style="text-align:left;">Default</td>
        <td style="text-align:left;">Left</td>
        <td style="text-align:center;">Center</td>
        <td style="text-align:right;">Right</td>
    </tr>
    </tbody>
    </table>

    <p>The placing of the colon (<code>:</code>) is optional and determines the alignment of columns in the data rows. This line is mandatory and must be placed between the headers and the data rows.</p>

    <p>Also, the usage of the <code>|</code> at the beginning or end of the rows is optional &#8211; as long as at least one <code>|</code> is present in each row.</p>

    <h4 id="section-mmd-tables-colspanning">Column Spanning</h4>

    <p>To make a cell span across multiple columns, instead of using a single pipe (<code>|</code>) character to delimit that cell, use the number of pipes corresponding to the columns you wish to span.</p>

    <pre><code>| Column 1 | Column 2 | Column 3 | Column 4 |
    | -------- | :------: | -------- | -------- |
    | No span  | Span across three columns    |||
    </code></pre>

    <table>
    <colgroup>
    <col style="text-align:left;"/>
    <col style="text-align:center;"/>
    <col style="text-align:left;"/>
    <col style="text-align:left;"/>
    </colgroup>

    <thead>
    <tr>
        <th style="text-align:left;">Column 1</th>
        <th style="text-align:center;">Column 2</th>
        <th style="text-align:left;">Column 3</th>
        <th style="text-align:left;">Column 4</th>
    </tr>
    </thead>

    <tbody>
    <tr>
        <td style="text-align:left;">No span</td>
        <td style="text-align:center;" colspan="3">Span across three columns</td>
    </tr>
    </tbody>
    </table>

    <blockquote>
    <p><strong>NOTE</strong><br/>
    This is only an introduction to MultiMarkdown&#8217;s tables. For the full reference, please refer to the &#8220;Tables&#8221; section on the <a href="https://github.com/fletcher/MultiMarkdown/blob/master/Documentation/MultiMarkdown%20User%27s%20Guide.md" title="Fletcher T. Penney's MultiMarkdown user guide">MultiMarkdown user guide</a>.</p>
    </blockquote>

    <hr />

    <h2 id="xref-metadata">Metadata</h2>

    <p>With MultiMarkdown, you can also embed metadata on your documents.</p>

    <p>Metadata must be placed at the top of the document &#8211; there can be no white-spaces before &#8211; and it ends with the first empty line. Each entry is composed of key and values, separated by a colon (<code>:</code>).</p>

    <p>After the colon comes the metadata value, which can consist of pretty much any characters (including new lines). To keep multiline metadata values from being confused with additional metadata, I recommend indenting each new line of metadata. If your metadata value includes a colon, it must be indented to keep it from being treated as a new key-value pair.</p>

    <p>There are plenty of keys supported, some of the most common being <code>Title</code>, <code>Author</code>, <code>Date</code>, <code>Copyright</code>, <code>Keywords</code> and <code>Email</code>. Be sure to check <a href="https://github.com/fletcher/MultiMarkdown/blob/master/Documentation/MultiMarkdown%20User%27s%20Guide.md" title="Fletcher T. Penney's MultiMarkdown user guide">Fletcher&#8217;s guide</a> for a full reference.</p>

    <blockquote>
    <p><strong>TIP</strong><br/>
    When adding metadata information to your documents, make sure you always leave two spaces at the end of each metadata line. This will ensure that exporting to plain Markdown will result in a properly formatted piece of text &#8211; as opposed to a single run-on paragraph.</p>
    </blockquote>

    <h4 id="section-mmd-meta">Example</h4>

    <pre><code>Title:  Document title
    Author: John Doe
            Jane Doe
    Date:   January 1st, 2012
    Comment: This is a comment intended to demonstrate
        metadata that spans multiple lines, yet
        is treated as a single value.
    Test:    And this is a new key-value pair
    </code></pre>

    <h6 id="standardmetadatakeys%3A">&#8220;Standard&#8221; Metadata Keys:</h6>

    <ul>
    <li>Author</li>
    <li>Affiliation</li>
    <li>Base Header Level (The Base Header Level metadata tells MultiMarkdown to change the largest division level to the specified value, so if <code>Base Header Level: 3</code>, then <code># Introduction</code> will be output as <code>&lt;h3&gt;</code>)</li>
    <li>Biblio Style</li>
    <li><em>BibTeX</em></li>
    <li>Copyright</li>
    <li>CSS</li>
    <li>Date</li>
    <li>HTML Header</li>
    <li>LaTeX Footer</li>
    <li>LaTeX Input</li>
    <li>LaTeX Mode</li>
    <li>ODF Header</li>
    <li>Title</li>
    </ul>

    <h6 id="othermetadatakeys%3A">Other Metadata Keys:</h6>

    <ul>
    <li>Address</li>
    <li><em>Base URL</em></li>
    <li><em>Bibliography Title</em></li>
    <li>Bibliography Style</li>
    <li>Chapterstyle</li>
    <li>Email</li>
    <li>Format</li>
    <li><em>Keywords</em></li>
    <li>Language</li>
    <li>LaTeX XSLT (Used to designate an XSLT file to convert an XHTML document to a LaTeX document.)</li>
    <li>Pagestyle (LaTeX)</li>
    <li>Phone</li>
    <li>Recipient (Used by letterhead and envelope templates)</li>
    <li>Recipient Address (Used by letterhead and envelope templates)</li>
    <li>Revision (You can use a string to declare the current version of the document)</li>
    <li>RTF XSLT (This key is used to provide an XSLT file that can alter the XHTML output prior to conversion to RTF. Useful for further customizing the output of MultiMarkdown specifically for the RTF format.)</li>
    <li>Subtitle</li>
    </ul>

    <hr />

    <h2 id="section-various">Various</h2>

    <h4 id="xref-escape">Escaping Characters</h4>

    <p>Markdown allows you to use backslash escapes to generate literal characters which would otherwise have special meaning in Markdown’s formatting syntax. </p>

    <h4 id="xref-hardbreaks">Manual Line Breaks</h4>

    <p>End a line with two or more spaces:</p>

    <pre><code>Roses are red,
    Violets are blue.
    </code></pre>

    <hr />

    <!-- Links -->

    <hr />

    <div class="footnotes">
    <hr />
    <ol>
    </ol>
    </div>
    """
}
// swiftlint:enable file_length line_length type_body_length
