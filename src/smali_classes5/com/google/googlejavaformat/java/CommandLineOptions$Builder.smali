.class Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
.super Ljava/lang/Object;
.source "CommandLineOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/CommandLineOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private aosp:Ljava/lang/Boolean;

.field private final files:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fixImportsOnly:Ljava/lang/Boolean;

.field private help:Ljava/lang/Boolean;

.field private inPlace:Ljava/lang/Boolean;

.field private final lengths:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lines:Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final offsets:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeJavadocOnlyImports:Ljava/lang/Boolean;

.field private removeUnusedImports:Ljava/lang/Boolean;

.field private sortImports:Ljava/lang/Boolean;

.field private stdin:Ljava/lang/Boolean;

.field private version:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->files:Lcom/google/common/collect/ImmutableList$Builder;

    .line 179
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->builder()Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->lines:Lcom/google/common/collect/ImmutableRangeSet$Builder;

    .line 180
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->offsets:Lcom/google/common/collect/ImmutableList$Builder;

    .line 181
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->lengths:Lcom/google/common/collect/ImmutableList$Builder;

    .line 182
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace:Ljava/lang/Boolean;

    .line 183
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp:Ljava/lang/Boolean;

    .line 184
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->version:Ljava/lang/Boolean;

    .line 185
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->help:Ljava/lang/Boolean;

    .line 186
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin:Ljava/lang/Boolean;

    .line 187
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly:Ljava/lang/Boolean;

    .line 188
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeJavadocOnlyImports:Ljava/lang/Boolean;

    .line 189
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports:Ljava/lang/Boolean;

    .line 190
    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method addLength(Ljava/lang/Integer;)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->lengths:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 212
    return-object p0
.end method

.method addOffset(Ljava/lang/Integer;)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->offsets:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 207
    return-object p0
.end method

.method aosp(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp:Ljava/lang/Boolean;

    .line 217
    return-object p0
.end method

.method build()Lcom/google/googlejavaformat/java/CommandLineOptions;
    .registers 15

    .line 256
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->files:Lcom/google/common/collect/ImmutableList$Builder;

    .line 257
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace:Ljava/lang/Boolean;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->lines:Lcom/google/common/collect/ImmutableRangeSet$Builder;

    .line 259
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->build()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->offsets:Lcom/google/common/collect/ImmutableList$Builder;

    .line 260
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->lengths:Lcom/google/common/collect/ImmutableList$Builder;

    .line 261
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->aosp:Ljava/lang/Boolean;

    .line 262
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->version:Ljava/lang/Boolean;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->help:Ljava/lang/Boolean;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin:Ljava/lang/Boolean;

    .line 265
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly:Ljava/lang/Boolean;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeJavadocOnlyImports:Ljava/lang/Boolean;

    .line 267
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports:Ljava/lang/Boolean;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v13, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports:Ljava/lang/Boolean;

    .line 269
    new-instance v0, Lcom/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-direct/range {v0 .. v13}, Lcom/google/googlejavaformat/java/CommandLineOptions;-><init>(Lcom/google/common/collect/ImmutableList;ZLcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZZZZZZZ)V

    .line 256
    return-object v0
.end method

.method filesBuilder()Lcom/google/common/collect/ImmutableList$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->files:Lcom/google/common/collect/ImmutableList$Builder;

    return-object v0
.end method

.method fixImportsOnly(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->fixImportsOnly:Ljava/lang/Boolean;

    .line 237
    return-object p0
.end method

.method help(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 226
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->help:Ljava/lang/Boolean;

    .line 227
    return-object p0
.end method

.method inPlace(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 197
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->inPlace:Ljava/lang/Boolean;

    .line 198
    return-object p0
.end method

.method linesBuilder()Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->lines:Lcom/google/common/collect/ImmutableRangeSet$Builder;

    return-object v0
.end method

.method removeJavadocOnlyImports(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 241
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeJavadocOnlyImports:Ljava/lang/Boolean;

    .line 242
    return-object p0
.end method

.method removeUnusedImports(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->removeUnusedImports:Ljava/lang/Boolean;

    .line 252
    return-object p0
.end method

.method sortImports(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 246
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->sortImports:Ljava/lang/Boolean;

    .line 247
    return-object p0
.end method

.method stdin(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 231
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->stdin:Ljava/lang/Boolean;

    .line 232
    return-object p0
.end method

.method version(Z)Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;
    .registers 3

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/CommandLineOptions$Builder;->version:Ljava/lang/Boolean;

    .line 222
    return-object p0
.end method
