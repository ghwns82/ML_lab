.class Lazun/khang/slidingpuzzleaz/AppActivity$6;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->showRatingReminder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$messageTitle:Ljava/lang/String;

.field private final synthetic val$noButton:Ljava/lang/String;

.field private final synthetic val$rateButton:Ljava/lang/String;

.field private final synthetic val$remindLaterButton:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$messageTitle:Ljava/lang/String;

    iput-object p2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$rateButton:Ljava/lang/String;

    iput-object p4, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$remindLaterButton:Ljava/lang/String;

    iput-object p5, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$noButton:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 225
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$messageTitle:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$message:Ljava/lang/String;

    .line 227
    iget-object v3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$rateButton:Ljava/lang/String;

    .line 228
    iget-object v4, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$remindLaterButton:Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lazun/khang/slidingpuzzleaz/AppActivity$6;->val$noButton:Ljava/lang/String;

    .line 225
    invoke-static/range {v0 .. v5}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$4(Lazun/khang/slidingpuzzleaz/AppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method
