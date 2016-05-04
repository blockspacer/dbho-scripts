----------------------------------------------------------------------------------------------------
--
-- All or portions of this file Copyright (c) Amazon.com, Inc. or its affiliates or
-- its licensors.
--
-- For complete copyright and license terms please see the LICENSE at the root of this
-- distribution (the "License"). All use of this software is governed by the License,
-- or, if provided, by the license below or the license accompanying this file. Do not
-- remove or modify any license notices. This file is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--
-- Original file Copyright Crytek GMBH or its affiliates, used under license.
--
----------------------------------------------------------------------------------------------------
local Behavior = CreateAIBehavior("HeliFireGuns", "HeliIdle",
{
	Constructor = function (self, entity)
		self:AnalyzeSituation(entity)
	end,
	
	ShouldRelocate = function(self, entity)
		return AI.GetTargetType(entity.id) ~= AITARGET_ENEMY
	end,
	
	AnalyzeSituation = function(self, entity, sender, data)
		--AI.SetRefPointPosition( entity.id, data.point )
		--entity:InsertSubpipe(AIGOALPIPE_HIGHPRIORITY + AIGOALPIPE_KEEP_ON_TOP, "HeliShootAt", nil, nil)
	end,
})