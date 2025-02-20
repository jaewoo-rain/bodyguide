/* eslint-disable max-len */
/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import functions = require("firebase-functions/v1");
// import {HttpsError, onCall} from "firebase-functions/v2/https";

import {initializeApp} from "firebase-admin/app";
import {FieldValue, getFirestore} from "firebase-admin/firestore";

export const region = "asia-northeast3";

const app = initializeApp();

export const db = getFirestore(app);

export const onUserCreate = functions
  .region(region)
  .auth
  .user()
  .onCreate(async (user) => {
    await db.collection("users").doc(user.uid).set({
      createdAt: FieldValue.serverTimestamp(),
      onboarded: false,

      uid: user.uid,
      providerId: user.providerData[0].providerId,

      baseInfo: null,
    });
  });
