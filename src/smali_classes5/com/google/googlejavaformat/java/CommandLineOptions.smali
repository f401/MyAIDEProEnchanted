.class final Lcom/google/googlejavaformat/java/CommandLineOptions;
.super Ljava/lang/Object;
.source "CommandLineOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    }
.end annotation


# instance fields
.field private final aosp:Z

.field private final files:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fixImportsOnly:Z

.field private final help:Z

.field private final inPlace:Z

.field private final lengths:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lines:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final offsets:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final removeJavadocOnlyImports:Z

.field private final removeUnusedImports:Z

.field private final sortImports:Z

.field private final stdin:Z

.field private final version:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;ZLcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZZZZZZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZZZZZZZ)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->files:Lcom/google/common/collect/ImmutableList;

    .line 59
    iput-boolean p2, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->inPlace:Z

    .line 60
    iput-object p3, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->lines:Lcom/google/common/collect/ImmutableRangeSet;

    .line 61
    iput-object p4, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets:Lcom/google/common/collect/ImmutableList;

    .line 62
    iput-object p5, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->lengths:Lcom/google/common/collect/ImmutableList;

    .line 63
    iput-boolean p6, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->aosp:Z

    .line 64
    iput-boolean p7, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->version:Z

    .line 65
    iput-boolean p8, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->help:Z

    .line 66
    iput-boolean p9, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->stdin:Z

    .line 67
    iput-boolean p10, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->fixImportsOnly:Z

    .line 68
    iput-boolean p11, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->removeJavadocOnlyImports:Z

    .line 69
    iput-boolean p12, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->sortImports:Z

    .line 70
    iput-boolean p13, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->removeUnusedImports:Z

    .line 71
    return-void
.end method

.method static builder()Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 1

    .line 74
    new-instance v0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;

    invoke-direct {v0}, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method aosp()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->aosp:Z

    return v0
.end method

.method files()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->files:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method fixImportsOnly()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->fixImportsOnly:Z

    return v0
.end method

.method help()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->help:Z

    return v0
.end method

.method inPlace()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->inPlace:Z

    return v0
.end method

.method isSelection()Z
    .registers 2

    .line 173
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->lines()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/CommandLineOptions;->lengths()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method lengths()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->lengths:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method lines()Lcom/google/common/collect/ImmutableRangeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->lines:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method offsets()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->offsets:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method removeJavadocOnlyImports()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->removeJavadocOnlyImports:Z

    return v0
.end method

.method removeUnusedImports()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->removeUnusedImports:Z

    return v0
.end method

.method sortImports()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->sortImports:Z

    return v0
.end method

.method stdin()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->stdin:Z

    return v0
.end method

.method version()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions;->version:Z

    return v0
.end method
