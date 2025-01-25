.class public abstract Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.super Ljava/lang/Object;
.source "OpsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/OpsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BlankLineWanted"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;,
        Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;
    }
.end annotation


# static fields
.field public static final NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

.field public static final PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

.field public static final YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 566
    new-instance v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;-><init>(Lcom/google/common/base/Optional;)V

    sput-object v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    .line 571
    new-instance v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;-><init>(Lcom/google/common/base/Optional;)V

    sput-object v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    .line 577
    new-instance v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$SimpleBlankLine;-><init>(Lcom/google/common/base/Optional;)V

    sput-object v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conditional(Lcom/google/googlejavaformat/Output$BreakTag;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .registers 3

    .line 583
    new-instance v0, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract merge(Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lcom/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.end method

.method public abstract wanted()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
