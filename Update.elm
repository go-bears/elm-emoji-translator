module Update exposing (..)

import Model


type Msg
    = SetCurrentText String
    | SetSelectedKey String
    | ToggleDirection


update : Msg -> Model.Model -> Model.Model
update msg model =
    case msg of
        SetCurrentText newText ->
            -- updates model record with newText
            { model | currentText = newText }
            
            -- updates model record with selected emjoi key
        SetSelectedKey newKey ->
            { model | selectedKey = newKey }

        ToggleDirection ->
            case model.direction of
                Model.TextToEmoji ->
                    -- return a model with a direction value of `Model.EmojiToText`
                    { model | direction = Model.EmojiToText }
                Model.EmojiToText ->
                    -- return a model with a direction value of `Model.TextToEmoji`
                    { model | direction = Model.TextToEmoji }

