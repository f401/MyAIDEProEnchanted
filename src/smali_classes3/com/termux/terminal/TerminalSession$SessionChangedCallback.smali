.class public interface Lcom/termux/terminal/TerminalSession$SessionChangedCallback;
.super Ljava/lang/Object;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/terminal/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "SessionChangedCallback"
.end annotation


# virtual methods
.method public abstract onBell(Lcom/termux/terminal/TerminalSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/terminal/TerminalSession;",
            ")V"
        }
    .end annotation
.end method
