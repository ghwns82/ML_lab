.class Lazun/khang/slidingpuzzleaz/AppActivity$13;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->submitScoreToGooglePlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$score:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$13;->val$score:I

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 410
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-virtual {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-virtual {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v2

    const v3, 0x7f04002a

    invoke-virtual {v2, v3}, Lazun/khang/slidingpuzzleaz/AppActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$13;->val$score:I

    int-to-long v4, v3

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 413
    :cond_0
    return-void
.end method
