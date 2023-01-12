.class Lazun/khang/slidingpuzzleaz/AppActivity$5;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->showQuitConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cancelTitle:Ljava/lang/String;

.field private final synthetic val$messageTitle:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$okButton:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$messageTitle:Ljava/lang/String;

    iput-object p2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$okButton:Ljava/lang/String;

    iput-object p4, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$cancelTitle:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 193
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$messageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$okButton:Ljava/lang/String;

    .line 196
    new-instance v2, Lazun/khang/slidingpuzzleaz/AppActivity$5$1;

    invoke-direct {v2, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$5$1;-><init>(Lazun/khang/slidingpuzzleaz/AppActivity$5;)V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5;->val$cancelTitle:Ljava/lang/String;

    .line 204
    new-instance v2, Lazun/khang/slidingpuzzleaz/AppActivity$5$2;

    invoke-direct {v2, p0}, Lazun/khang/slidingpuzzleaz/AppActivity$5$2;-><init>(Lazun/khang/slidingpuzzleaz/AppActivity$5;)V

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 209
    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 211
    return-void
.end method
