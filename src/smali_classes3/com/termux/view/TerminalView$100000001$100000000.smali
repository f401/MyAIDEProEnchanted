.class Lcom/termux/view/TerminalView$100000001$100000000;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mLastY:I

.field private final this$0:Lcom/termux/view/TerminalView$100000001;

.field private final val$e2:Landroid/view/MotionEvent;

.field private final val$mouseTrackingAtStartOfFling:Z


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView$100000001;ZLandroid/view/MotionEvent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    iput-boolean p2, p0, Lcom/termux/view/TerminalView$100000001$100000000;->val$mouseTrackingAtStartOfFling:Z

    iput-object p3, p0, Lcom/termux/view/TerminalView$100000001$100000000;->val$e2:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->mLastY:I

    return-void
.end method

.method static access$0(Lcom/termux/view/TerminalView$100000001$100000000;)Lcom/termux/view/TerminalView$100000001;
    .registers 2

    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->val$mouseTrackingAtStartOfFling:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 168
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 169
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->val$mouseTrackingAtStartOfFling:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->mLastY:I

    sub-int v0, v2, v0

    .line 170
    :goto_1
    iget-object v3, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v3}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/view/TerminalView$100000001$100000000;->val$e2:Landroid/view/MotionEvent;

    invoke-virtual {v3, v4, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 171
    iput v2, p0, Lcom/termux/view/TerminalView$100000001$100000000;->mLastY:I

    .line 172
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView$100000001$100000000;->this$0:Lcom/termux/view/TerminalView$100000001;

    invoke-static {v0}, Lcom/termux/view/TerminalView$100000001;->access$0(Lcom/termux/view/TerminalView$100000001;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget v0, v0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int v0, v2, v0

    goto :goto_1
.end method
