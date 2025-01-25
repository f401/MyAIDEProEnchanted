.class Lcom/google/googlejavaformat/java/ImportOrderer$Import;
.super Ljava/lang/Object;
.source "ImportOrderer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/ImportOrderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Import"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/googlejavaformat/java/ImportOrderer$Import;",
        ">;"
    }
.end annotation


# instance fields
.field final imported:Ljava/lang/String;

.field final isStatic:Z

.field final trailing:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->trailing:Ljava/lang/String;

    .line 336
    iput-boolean p3, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    .line 337
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/googlejavaformat/java/ImportOrderer$Import;)I
    .registers 4

    .line 342
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    iget-boolean v1, p1, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    if-eq v0, v1, :cond_c

    .line 343
    if-eqz v0, :cond_a

    const/4 v0, -0x1

    .line 345
    :goto_9
    return v0

    .line 343
    :cond_a
    const/4 v0, 0x1

    goto :goto_9

    .line 345
    :cond_c
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 317
    check-cast p1, Lcom/google/googlejavaformat/java/ImportOrderer$Import;

    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->compareTo(Lcom/google/googlejavaformat/java/ImportOrderer$Import;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 351
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    if-eqz v0, :cond_27

    const-string v0, "static "

    .line 352
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->imported:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->trailing:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_27
    const-string v0, ""

    goto :goto_6
.end method
