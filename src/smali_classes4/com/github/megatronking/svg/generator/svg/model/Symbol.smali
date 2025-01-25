.class public Lcom/github/megatronking/svg/generator/svg/model/Symbol;
.super Lcom/github/megatronking/svg/generator/svg/model/G;


# instance fields
.field public isInUse:Z

.field public viewBox:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/G;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/model/Symbol;->isInUse:Z

    return v0
.end method
