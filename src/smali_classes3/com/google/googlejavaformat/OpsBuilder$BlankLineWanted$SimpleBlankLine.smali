.class final Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;
.super Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.source "OpsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleBlankLine"
.end annotation


# instance fields
.field private final wanted:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Optional;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 599
    invoke-direct {p0}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;->wanted:Lcom/google/common/base/Optional;

    .line 601
    return-void
.end method


# virtual methods
.method public merge(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .registers 2

    .line 610
    return-object p0
.end method

.method public wanted()Lcom/google/common/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;->wanted:Lcom/google/common/base/Optional;

    return-object v0
.end method
