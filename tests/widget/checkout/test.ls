module.exports = (browser, data)->
  browser
     .title!
       .should.eventually.include('Gallery')
     .element-by-css(\.buy-now-button).click()
     .title!
       .should.eventually.include('Calendar')
     .element-by-css(\.day.enabled).click().sleep(1000)
     .title!
       .should.eventually.include('Timeslots')
     .element-by-css(\.arrow.choose-slot).click!
     .title!
       .should.eventually.include('Order')
     .element-by-css(\.go-to-checkout).click!
     .title!
       .should.eventually.include('Checkout')
     .element-by-css('.input[name="email"]').type(data.email.input)
     .get-value!
       .should.become(data.email.input)
     .element-by-css('.input[name="name"]').type(data.name.input)
     .get-value!
       .should.become(data.name.input)
     .element-by-css('.input[name="phone"]').type(data.phone.input)
     .get-value!
       .should.become(data.phone.expected)
     .element-by-css('.input[name="address"]').type(data.address.input).sleep(1000)
     .element-by-css('.pac-container .pac-item').click!
     .element-by-css('.input[name="notes"]').type(data.notes.input)
     .get-value!
       .should.become(data.notes.input)
     .element-by-css('.input[name="card"]').type(data.card.input)
     .get-value!
       .should.become(data.card.expected)
     .element-by-css('.input[name="expDate"]').type(data.expDate.input)
     .get-value!
       .should.become(data.exp-date.expected)
     .element-by-css('.input[name="cvv"]').type(data.cvv.input)
     .get-value!
       .should.become(data.cvv.input)
     .element-by-css('.agreement.check').click!
     .element-by-css('.buttn.checkout').click!.sleep(10 * 1000)
     .title!
       .should.eventually.include(\Success).sleep(3 * 1000)
     .fin browser~quit
     .done!