.class Lazun/khang/slidingpuzzleaz/AppActivity$10;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->showLeaderBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$achievementButton:Ljava/lang/String;

.field private final synthetic val$leaderboardButton:Ljava/lang/String;

.field private final synthetic val$messageTitle:Ljava/lang/String;

.field private final synthetic val$okButton:Ljava/lang/String;

.field private final synthetic val$selection_msg:Ljava/lang/String;

.field private final synthetic val$signIn_msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$messageTitle:Ljava/lang/String;

    iput-object p2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$signIn_msg:Ljava/lang/String;

    iput-object p3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$selection_msg:Ljava/lang/String;

    iput-object p4, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$leaderboardButton:Ljava/lang/String;

    iput-object p5, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$achievementButton:Ljava/lang/String;

    iput-object p6, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$okButton:Ljava/lang/String;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 276
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$messageTitle:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$signIn_msg:Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$selection_msg:Ljava/lang/String;

    .line 279
    iget-object v4, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$leaderboardButton:Ljava/lang/String;

    .line 280
    iget-object v5, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$achievementButton:Ljava/lang/String;

    .line 281
    iget-object v6, p0, Lazun/khang/slidingpuzzleaz/AppActivity$10;->val$okButton:Ljava/lang/String;

    .line 276
    invoke-static/range {v0 .. v6}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$5(Lazun/khang/slidingpuzzleaz/AppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method
