.class public Lorg/apache/tools/ant/types/resources/Resources;
.super Lorg/apache/tools/ant/types/DataType;
.source "Resources.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/AppendableResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/Resources$MyCollection;,
        Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;
    }
.end annotation


# static fields
.field public static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Lorg/apache/tools/ant/types/ResourceCollection;


# instance fields
.field private cache:Z

.field private coll:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private rc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/Resources;->NONE:Lorg/apache/tools/ant/types/ResourceCollection;

    .line 61
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$2;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources$2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/resources/Resources;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;)V
    .registers 3

    .line 142
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 144
    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/resources/Resources;)Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/resources/Resources;)Ljava/util/List;
    .registers 2

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNested()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    :cond_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getRef()Lorg/apache/tools/ant/types/ResourceCollection;
    .registers 2

    .line 270
    const-class v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Resources;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    return-object v0
.end method

.method private validate()V
    .registers 2

    monitor-enter p0

    .line 274
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->dieOnCircularReference()V

    .line 275
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;

    if-nez v0, :cond_d

    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;-><init>(Lorg/apache/tools/ant/types/resources/Resources;)V

    :cond_d
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 276
    monitor-exit p0

    return-void

    .line 273
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-nez v0, :cond_2b

    .line 164
    if-nez p1, :cond_b

    .line 165
    monitor-exit p0

    .line 174
    :goto_a
    return-void

    .line 167
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    .line 170
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->rc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->invalidateExistingIterators()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Resources;->setChecked(Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_30

    .line 174
    monitor-exit p0

    goto :goto_a

    .line 162
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_30

    .line 160
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 256
    :goto_6
    return-void

    .line 246
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 247
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_6

    .line 249
    :cond_11
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    .line 250
    instance-of v2, v0, Lorg/apache/tools/ant/types/DataType;

    if-eqz v2, :cond_19

    .line 251
    check-cast v0, Lorg/apache/tools/ant/types/DataType;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/Resources;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_19

    .line 254
    :cond_2f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/Resources;->setChecked(Z)V

    goto :goto_6
.end method

.method protected invalidateExistingIterators()V
    .registers 1

    .line 262
    invoke-static {p0}, Lorg/apache/tools/ant/types/resources/FailFast;->invalidate(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .registers 3

    .line 208
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 209
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    .line 212
    :goto_e
    return v0

    .line 211
    :cond_f
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 212
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getNested()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/types/resources/BaseResourceCollectionContainer$$ExternalSyntheticLambda2;

    .line 213
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    goto :goto_e
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 183
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_21

    move-result-object v0

    monitor-exit p0

    .line 186
    :goto_10
    return-object v0

    .line 185
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 186
    new-instance v0, Lorg/apache/tools/ant/types/resources/FailFast;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/resources/FailFast;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_21

    monitor-exit p0

    goto :goto_10

    .line 181
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCache(Z)V
    .registers 3

    monitor-enter p0

    .line 152
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/Resources;->cache:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 153
    monitor-exit p0

    return-void

    .line 151
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    .line 195
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 196
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    move-result v0

    monitor-exit p0

    .line 199
    :goto_10
    return v0

    .line 198
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1c

    move-result v0

    monitor-exit p0

    goto :goto_10

    .line 194
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 222
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 223
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->getRef()Lorg/apache/tools/ant/types/ResourceCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3c

    move-result-object v0

    monitor-exit p0

    .line 229
    :goto_10
    return-object v0

    .line 225
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources;->validate()V

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_3c

    move-result v0

    if-eqz v0, :cond_22

    .line 227
    :cond_1e
    monitor-exit p0

    const-string v0, ""

    goto :goto_10

    .line 229
    :cond_22
    :try_start_22
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources;->coll:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/resources/AbstractResourceCollectionWrapper$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 230
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_3c

    .line 229
    monitor-exit p0

    goto :goto_10

    .line 221
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
