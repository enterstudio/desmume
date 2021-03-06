/*
	Copyright (C) 2017 DeSmuME team

	This file is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 2 of the License, or
	(at your option) any later version.

	This file is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with the this software.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "DisplayViewCALayer.h"

DisplayViewCALayerInterface::DisplayViewCALayerInterface()
{
	_frontendLayer = nil;
}

CALayer<DisplayViewCALayer>* DisplayViewCALayerInterface::GetFrontendLayer() const
{
	return this->_frontendLayer;
}

void DisplayViewCALayerInterface::SetFrontendLayer(CALayer<DisplayViewCALayer> *layer)
{
	this->_frontendLayer = layer;
}

void DisplayViewCALayerInterface::CALayerDisplay()
{
	[this->_frontendLayer setNeedsDisplay];
}
