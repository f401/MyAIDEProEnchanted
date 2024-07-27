.class Lcom/termux/app/TermuxActivity$100000009;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000009;->this$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000009;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000009;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000009;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    .line 416
    const/4 v0, 0x1

    return v0
.end method
