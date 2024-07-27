.class Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;
.super Ljava/lang/Object;
.source "ImportOrderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/ImportOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportsAndIndex"
.end annotation


# instance fields
.field final imports:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Lcom/google/googlejavaformat/java/ImportOrderer$Import;",
            ">;"
        }
    .end annotation
.end field

.field final index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Lcom/google/googlejavaformat/java/ImportOrderer$Import;",
            ">;I)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->imports:Lcom/google/common/collect/ImmutableSortedSet;

    .line 362
    iput p2, p0, Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->index:I

    .line 363
    return-void
.end method
