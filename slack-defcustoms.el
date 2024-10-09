;;; slack-defcustoms.el --- slack client              -*- lexical-binding: t; -*-

;; Copyright (C) 2024 ag91

;; URL: https://github.com/ag91/emacs-slack
;; Author: andrea-dev@hotmail.com
;; Keywords: tools
;; Version: 0.0.2
;; Package-Requires: ((websocket "1.12") (request "0.3.2") (circe "2.11") (alert "1.2") (emojify "1.2.1") (emacs "25.1"))
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Container of shared variables for emacs-slack

;; A common place to store shared variables.
;; Possibly the container of all defcustom but no time to refactor things at the moment.

;;; Code:

(defcustom slack-update-quick nil
  "Set to t if you hit rate limiting on connection.

Slack has strict rate limiting for user tokens. Updating public
channels can hit these limits pretty quickly if the Slack team is
large enough. Setting this to t, will make sure only channels you
are part of are updated via `slack-api-client-userboot-url'.

The cons of this approach is that you will need to explicitly
call `slack-conversations-list' if you want a sync of public
channels. You may need that if you don't find a channel you
expect to exist."
  :type 'boolean
  :group 'slack)

(provide 'slack-defcustoms)
;;; slack-defcustoms.el ends here
