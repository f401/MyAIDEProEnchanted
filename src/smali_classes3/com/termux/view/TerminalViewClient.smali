.class public interface Lcom/termux/view/TerminalViewClient;
.super Ljava/lang/Object;
.source "TerminalViewClient.java"


# virtual methods
.method public abstract copyModeChanged(Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation
.end method

.method public abstract onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onScale(F)F
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readAltKey()Z
.end method

.method public abstract readControlKey()Z
.end method

.method public abstract shouldBackButtonBeMappedToEscape()Z
.end method
