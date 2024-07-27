.class public Lcom/sun/tools/javac/util/Position;
.super Ljava/lang/Object;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/util/Position$LineMap;,
        Lcom/sun/tools/javac/util/Position$LineMapImpl;,
        Lcom/sun/tools/javac/util/Position$LineTabMapImpl;
    }
.end annotation


# static fields
.field public static final FIRSTCOLUMN:I = 0x1

.field public static final FIRSTLINE:I = 0x1

.field public static final FIRSTPOS:I = 0x0

.field public static final LINESHIFT:I = 0xa

.field public static final MAXCOLUMN:I = 0x3ff

.field public static final MAXLINE:I = 0x3fffff

.field public static final MAXPOS:I = 0x7fffffff

.field public static final NOPOS:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodePosition(II)I
    .registers 4

    const/4 v0, 0x1

    .line 93
    if-lt p0, v0, :cond_3

    .line 95
    if-lt p1, v0, :cond_2

    .line 98
    const v0, 0x3fffff

    if-gt p0, v0, :cond_0

    const/16 v0, 0x3ff

    if-le p1, v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, -0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "line must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeLineMap([CIZ)Lcom/sun/tools/javac/util/Position$LineMap;
    .registers 4

    .line 75
    if-eqz p2, :cond_0

    .line 76
    new-instance v0, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/util/Position$LineTabMapImpl;-><init>(I)V

    .line 77
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/sun/tools/javac/util/Position$LineMapImpl;->build([CI)V

    .line 78
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/util/Position$LineMapImpl;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Position$LineMapImpl;-><init>()V

    goto :goto_0
.end method
