.class public Lazun/khang/slidingpuzzleaz/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;


# static fields
.field private static final TEST_DEVICE_HP:Ljava/lang/String; = "D2366BAB16569CC6907819F06B21F154"

.field private static final TEST_DEVICE_HT:Ljava/lang/String; = "69AB9D797A0EFC7048A45A999989949A"

.field private static final TEST_DEVICE_SAMSUNG:Ljava/lang/String; = "AA2FDD2FFE8F52B77D7F3AB80FCDD2B2"

.field private static _appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;


# instance fields
.field final RC_RESOLVE:I

.field final RC_UNUSED:I

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private capturedFileName:Ljava/lang/String;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field protected mDebugLog:Z

.field protected mHelper:Lcom/google/example/games/basegameutils/GameHelper;

.field protected mRequestedClients:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mRequestedClients:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mDebugLog:Z

    .line 70
    const/16 v0, 0x1388

    iput v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->RC_RESOLVE:I

    const/16 v0, 0x1389

    iput v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->RC_UNUSED:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->capturedFileName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$0()Lazun/khang/slidingpuzzleaz/AppActivity;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    return-object v0
.end method

.method static synthetic access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$2()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$4(Lazun/khang/slidingpuzzleaz/AppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct/range {p0 .. p5}, Lazun/khang/slidingpuzzleaz/AppActivity;->showRatePopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lazun/khang/slidingpuzzleaz/AppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct/range {p0 .. p6}, Lazun/khang/slidingpuzzleaz/AppActivity;->checkToShowLeaderboard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lazun/khang/slidingpuzzleaz/AppActivity;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lazun/khang/slidingpuzzleaz/AppActivity;->launchMarket()V

    return-void
.end method

.method private checkToShowLeaderboard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageTitle"    # Ljava/lang/String;
    .param p2, "signIn_msg"    # Ljava/lang/String;
    .param p3, "selection_msg"    # Ljava/lang/String;
    .param p4, "leaderboardButton"    # Ljava/lang/String;
    .param p5, "achievementButton"    # Ljava/lang/String;
    .param p6, "okButton"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0}, Lazun/khang/slidingpuzzleaz/AppActivity;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-virtual {p0}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    const v4, 0x7f04002a

    invoke-virtual {p0, v4}, Lazun/khang/slidingpuzzleaz/AppActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 312
    .local v1, "leaderboards":Landroid/content/Intent;
    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Lazun/khang/slidingpuzzleaz/AppActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    .end local v1    # "leaderboards":Landroid/content/Intent;
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 326
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    new-instance v2, Lazun/khang/slidingpuzzleaz/AppActivity$12;

    invoke-direct {v2, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$12;-><init>(Lazun/khang/slidingpuzzleaz/AppActivity;)V

    invoke-virtual {v0, p6, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 334
    const v2, 0x7f02001c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private copyFileToSdCard(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v6, "source":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "dest":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .local v7, "sourceFile":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 470
    .local v2, "destinationFile":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 472
    .end local v2    # "destinationFile":Ljava/io/FileOutputStream;
    .local v3, "destinationFile":Ljava/io/FileOutputStream;
    const/high16 v8, 0x80000

    :try_start_2
    new-array v0, v8, [B

    .line 475
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .local v5, "nbLecture":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_0

    .line 479
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 482
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 488
    .end local v0    # "buffer":[B
    .end local v3    # "destinationFile":Ljava/io/FileOutputStream;
    .end local v5    # "nbLecture":I
    .end local v7    # "sourceFile":Ljava/io/FileInputStream;
    :goto_1
    return-object v1

    .line 476
    .restart local v0    # "buffer":[B
    .restart local v3    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v5    # "nbLecture":I
    .restart local v7    # "sourceFile":Ljava/io/FileInputStream;
    :cond_0
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v3, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 478
    .end local v0    # "buffer":[B
    .end local v5    # "nbLecture":I
    :catchall_0
    move-exception v8

    move-object v2, v3

    .line 479
    .end local v3    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v2    # "destinationFile":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 480
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 481
    :catchall_1
    move-exception v8

    .line 482
    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 483
    throw v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 484
    .end local v2    # "destinationFile":Ljava/io/FileOutputStream;
    .end local v7    # "sourceFile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 485
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 481
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v5    # "nbLecture":I
    .restart local v7    # "sourceFile":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v2    # "destinationFile":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 478
    .end local v0    # "buffer":[B
    .end local v5    # "nbLecture":I
    :catchall_3
    move-exception v8

    goto :goto_2
.end method

.method public static displayInterstitial()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$3;

    invoke-direct {v1}, Lazun/khang/slidingpuzzleaz/AppActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private static getAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 81
    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 82
    const-string v1, "D2366BAB16569CC6907819F06B21F154"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 83
    const-string v1, "AA2FDD2FFE8F52B77D7F3AB80FCDD2B2"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 84
    const-string v1, "69AB9D797A0EFC7048A45A999989949A"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public static hideAd()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$1;

    invoke-direct {v1}, Lazun/khang/slidingpuzzleaz/AppActivity$1;-><init>()V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method private launchMarket()V
    .locals 5

    .prologue
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lazun/khang/slidingpuzzleaz/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 341
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v1, "myAppLinkToMarket":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, " unable to find market app"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static loadInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "interAdId"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$4;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 2
    .param p0, "adUnit"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$2;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public static showLeaderBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "messageTitle"    # Ljava/lang/String;
    .param p1, "signIn_msg"    # Ljava/lang/String;
    .param p2, "selection_msg"    # Ljava/lang/String;
    .param p3, "leaderboardButton"    # Ljava/lang/String;
    .param p4, "achievementButton"    # Ljava/lang/String;
    .param p5, "okButton"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v7, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v0, Lazun/khang/slidingpuzzleaz/AppActivity$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lazun/khang/slidingpuzzleaz/AppActivity$10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public static showMarket()V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$11;

    invoke-direct {v1}, Lazun/khang/slidingpuzzleaz/AppActivity$11;-><init>()V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public static showQuitConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "messageTitle"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "okButton"    # Ljava/lang/String;
    .param p3, "cancelTitle"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lazun/khang/slidingpuzzleaz/AppActivity$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method private showRatePopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "rateButton"    # Ljava/lang/String;
    .param p4, "remindLaterButton"    # Ljava/lang/String;
    .param p5, "noButton"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$7;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$7;-><init>(Lazun/khang/slidingpuzzleaz/AppActivity;)V

    .line 239
    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 247
    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$8;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$8;-><init>(Lazun/khang/slidingpuzzleaz/AppActivity;)V

    .line 246
    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 255
    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$9;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$9;-><init>(Lazun/khang/slidingpuzzleaz/AppActivity;)V

    .line 254
    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 262
    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 264
    return-void
.end method

.method public static showRatingReminder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "messageTitle"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "rateButton"    # Ljava/lang/String;
    .param p3, "remindLaterButton"    # Ljava/lang/String;
    .param p4, "noButton"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v6, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v0, Lazun/khang/slidingpuzzleaz/AppActivity$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lazun/khang/slidingpuzzleaz/AppActivity$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public static submitPlayTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "incremental1"    # Ljava/lang/String;
    .param p1, "incremental2"    # Ljava/lang/String;
    .param p2, "incremental3"    # Ljava/lang/String;
    .param p3, "incremental4"    # Ljava/lang/String;

    .prologue
    .line 435
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lazun/khang/slidingpuzzleaz/AppActivity$15;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public static submitScoreToGooglePlay(I)V
    .locals 2
    .param p0, "score"    # I

    .prologue
    .line 406
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$13;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$13;-><init>(I)V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public static unlockGooglePlayAchievement(Ljava/lang/String;)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 419
    sget-object v0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    new-instance v1, Lazun/khang/slidingpuzzleaz/AppActivity$14;

    invoke-direct {v1, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$14;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method


# virtual methods
.method protected beginUserInitiatedSignIn()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    .line 367
    return-void
.end method

.method public deleteScreenshotForSharing()V
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->capturedFileName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->capturedFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "screenshot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 455
    const-string v1, ""

    iput-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->capturedFileName:Ljava/lang/String;

    .line 457
    .end local v0    # "screenshot":Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected enableDebugLog(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mDebugLog:Z

    .line 383
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 386
    :cond_0
    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    iget v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mRequestedClients:I

    invoke-direct {v0, p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 352
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-boolean v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    .line 354
    :cond_0
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 532
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 533
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 534
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lazun/khang/slidingpuzzleaz/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 94
    new-instance v3, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v3, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    .line 95
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 96
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    .line 97
    .local v1, "adsHeight":I
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setAdsBannerHeight(I)V

    .line 100
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "relativeLayout":Landroid/widget/RelativeLayout;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    const/4 v3, -0x1

    .line 106
    const/4 v4, -0x2

    .line 104
    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, "adViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 113
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 116
    new-instance v3, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 118
    sput-object p0, Lazun/khang/slidingpuzzleaz/AppActivity;->_appActivity:Lazun/khang/slidingpuzzleaz/AppActivity;

    .line 120
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v3, :cond_0

    .line 121
    invoke-virtual {p0}, Lazun/khang/slidingpuzzleaz/AppActivity;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    .line 123
    :cond_0
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v3, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 510
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 511
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 504
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 505
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 494
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 497
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 515
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 521
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    .line 522
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 526
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 527
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V

    .line 528
    return-void
.end method

.method protected reconnectClient()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->reconnectClient()V

    .line 394
    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 375
    return-void
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 379
    return-void
.end method

.method protected signOut()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lazun/khang/slidingpuzzleaz/AppActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->signOut()V

    .line 371
    return-void
.end method
