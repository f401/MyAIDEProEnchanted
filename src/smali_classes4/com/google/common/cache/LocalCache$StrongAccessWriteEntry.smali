.class final Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;
.super Lcom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$StrongEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V
    .registers 8
    .param p3  # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const-wide v2, 0x7fffffffffffffffL

    .line 1070
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V

    .line 1075
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1088
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1101
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1115
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1128
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1141
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1071
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .registers 3

    .line 1079
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .registers 3

    .line 1119
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .registers 4

    .line 1084
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1085
    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1097
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1098
    return-void
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1137
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1138
    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1110
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lcom/google/common/cache/ReferenceEntry;

    .line 1111
    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 1150
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 1151
    return-void
.end method

.method public setWriteTime(J)V
    .registers 4

    .line 1124
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1125
    return-void
.end method
