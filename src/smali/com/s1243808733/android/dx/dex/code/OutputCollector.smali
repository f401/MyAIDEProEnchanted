.class public final Lcom/s1243808733/android/dx/dex/code/OutputCollector;
.super Ljava/lang/Object;
.source "OutputCollector.java"


# instance fields
.field private final finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

.field private suffix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/DexOptions;IIII)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;-><init>(Lcom/s1243808733/android/dx/dex/DexOptions;III)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    return-void
.end method

.method private appendSuffixToOutput()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 128
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public addSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    goto :goto_0
.end method

.method public getFinisher()Lcom/s1243808733/android/dx/dex/code/OutputFinisher;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->appendSuffixToOutput()V

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->finisher:Lcom/s1243808733/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->size()I

    move-result v0

    return v0
.end method
