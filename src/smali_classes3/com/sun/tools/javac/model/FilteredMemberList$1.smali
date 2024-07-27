.class Lcom/sun/tools/javac/model/FilteredMemberList$1;
.super Ljava/lang/Object;
.source "FilteredMemberList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/model/FilteredMemberList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private hasNextForSure:Z

.field private nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

.field final this$0:Lcom/sun/tools/javac/model/FilteredMemberList;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/model/FilteredMemberList;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->this$0:Lcom/sun/tools/javac/model/FilteredMemberList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->this$0:Lcom/sun/tools/javac/model/FilteredMemberList;

    invoke-static {v0}, Lcom/sun/tools/javac/model/FilteredMemberList;->access$000(Lcom/sun/tools/javac/model/FilteredMemberList;)Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->hasNextForSure:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    const/4 v0, 0x1

    .line 81
    iget-boolean v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->hasNextForSure:Z

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v1}, Lcom/sun/tools/javac/model/FilteredMemberList;->access$100(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_1

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->hasNextForSure:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public next()Lcom/sun/tools/javac/code/Symbol;
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/sun/tools/javac/model/FilteredMemberList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 94
    iget-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->nextEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/tools/javac/model/FilteredMemberList$1;->hasNextForSure:Z

    .line 96
    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/sun/tools/javac/model/FilteredMemberList$1;->next()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
