.class public final Lcom/s1243808733/android/dx/dex/code/OutputCollector;
.super Ljava/lang/Object;
.source "OutputCollector.java"


# instance fields
.field private final finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

.field private suffix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/DexOptions;IIII)V
    .registers 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;-><init>(Lcom/s1243808733/android/dx/dex/DexOptions;III)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    return-void
.end method

.method private appendSuffixToOutput()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 128
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 131
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public addSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->size()I

    move-result v0

    if-ge p1, v0, :cond_12

    if-gez p1, :cond_b

    goto :goto_12

    .line 72
    :cond_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFinisher()Lcom/s1243808733/android/dx/dex/code/OutputFinisher;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 116
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->appendSuffixToOutput()V

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    return-object v0

    .line 113
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->size()I

    move-result v0

    return v0
.end method
