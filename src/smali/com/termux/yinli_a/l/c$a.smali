.class public final Lcom/termux/yinli_a/l/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/yinli_a/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/yinli_a/k/b/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/termux/yinli_a/l/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/termux/yinli_a/l/c;
    .registers 2

    invoke-static {}, Lcom/termux/yinli_a/l/c;->f()Lcom/termux/yinli_a/l/c;

    move-result-object v0

    return-object v0
.end method
