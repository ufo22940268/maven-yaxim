package org.yaxim.androidclient.service;

import org.yaxim.androidclient.chat.IXMPPChatCallback;

interface IXMPPChatService {
	void sendMessage(String user, String message);
	List<String> pullMessagesForContact(String jabberID);

	void registerChatCallback(IXMPPChatCallback callback, String jabberID);
	void unregisterChatCallback(IXMPPChatCallback callback, String jabberID);
	boolean isAuthenticated();
}