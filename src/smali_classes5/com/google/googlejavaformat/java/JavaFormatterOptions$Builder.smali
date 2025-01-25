.class public Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;
.super Ljava/lang/Object;
.source "JavaFormatterOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaFormatterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;->GOOGLE:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    iput-object v0, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions$1;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlejavaformat/java/JavaFormatterOptions;
    .registers 4

    .line 105
    new-instance v0, Lcom/google/googlejavaformat/java/JavaFormatterOptions;

    iget-object v1, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/JavaFormatterOptions;-><init>(Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;Lcom/google/googlejavaformat/java/JavaFormatterOptions$1;)V

    return-object v0
.end method

.method public style(Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;)Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavaFormatterOptions$Builder;->style:Lcom/google/googlejavaformat/java/JavaFormatterOptions$Style;

    .line 101
    return-object p0
.end method
