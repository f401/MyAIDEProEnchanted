.class public Lcom/blankj/utilcode/util/TouchUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/TouchUtils$Direction;,
        Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x8

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final UP:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnTouchListener(Landroid/view/View;Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;)V
    .registers 2

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4
.end method
