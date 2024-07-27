.class public Lcom/google/googlejavaformat/java/JavaFormatterOptions;
.super Ljava/lang/Object;
.source "JavaFormatterOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;,
        Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;
    }
.end annotation


# static fields
.field static DEFAULT_MAX_LINE_LENGTH:I = 0x29a


# instance fields
.field private final style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;Lcom/google/googlejavaformat/java/JavaFormatterOptions$1;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;)V

    return-void
.end method

.method public static builder()Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;
    .registers 2

    .line 50
    new-instance v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions$1;)V

    return-object v0
.end method

.method public static defaultOptions()Lcom/google/googlejavaformat/java/JavaFormatterOptions;
    .registers 1

    .line 43
    invoke-static {}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->builder()Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->build()Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public indentationMultiplier()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions;->style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->indentationMultiplier()I

    move-result v0

    return v0
.end method

.method public maxLineLength()I
    .registers 2

    .line 57
    const/16 v0, 0x29a

    return v0
.end method
