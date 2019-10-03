// Code generated by go-swagger; DO NOT EDIT.

package operations

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the generate command

import (
	"net/http"

	middleware "github.com/go-openapi/runtime/middleware"
)

// DeleteSampleHandlerFunc turns a function with the right signature into a delete sample handler
type DeleteSampleHandlerFunc func(DeleteSampleParams) middleware.Responder

// Handle executing the request and returning a response
func (fn DeleteSampleHandlerFunc) Handle(params DeleteSampleParams) middleware.Responder {
	return fn(params)
}

// DeleteSampleHandler interface for that can handle valid delete sample params
type DeleteSampleHandler interface {
	Handle(DeleteSampleParams) middleware.Responder
}

// NewDeleteSample creates a new http.Handler for the delete sample operation
func NewDeleteSample(ctx *middleware.Context, handler DeleteSampleHandler) *DeleteSample {
	return &DeleteSample{Context: ctx, Handler: handler}
}

/*DeleteSample swagger:route DELETE /sample/{id} deleteSample

deletes a sample

Deletes a sample to the system

*/
type DeleteSample struct {
	Context *middleware.Context
	Handler DeleteSampleHandler
}

func (o *DeleteSample) ServeHTTP(rw http.ResponseWriter, r *http.Request) {
	route, rCtx, _ := o.Context.RouteInfo(r)
	if rCtx != nil {
		r = rCtx
	}
	var Params = NewDeleteSampleParams()

	if err := o.Context.BindValidRequest(r, route, &Params); err != nil { // bind params
		o.Context.Respond(rw, r, route.Produces, route, err)
		return
	}

	res := o.Handler.Handle(Params) // actually handle the request

	o.Context.Respond(rw, r, route.Produces, route, res)

}
