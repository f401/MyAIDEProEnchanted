.class public final Lcom/termux/app/TermuxPreferences$KeyboardShortcut;
.super Ljava/lang/Object;
.source "TermuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyboardShortcut"
.end annotation


# instance fields
.field final codePoint:I

.field final shortcutAction:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->codePoint:I

    .line 165
    iput p2, p0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->shortcutAction:I

    return-void
.end method
