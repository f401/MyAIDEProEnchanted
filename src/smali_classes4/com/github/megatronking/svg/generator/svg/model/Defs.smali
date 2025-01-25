.class public Lcom/github/megatronking/svg/generator/svg/model/Defs;
.super Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/megatronking/svg/generator/svg/model/SvgGroupNode;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStyles(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public isValid()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
