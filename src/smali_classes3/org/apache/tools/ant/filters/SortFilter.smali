.class public final Lorg/apache/tools/ant/filters/SortFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "SortFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final COMPARATOR_KEY:Ljava/lang/String; = "comparator"

.field private static final REVERSE_KEY:Ljava/lang/String; = "reverse"


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reverse:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 138
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    .line 158
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 138
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    .line 158
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    .line 180
    return-void
.end method

.method private initialize()V
    .registers 7

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_2

    .line 317
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 318
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 319
    const-string v5, "reverse"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/SortFilter;->setReverse(Z)V

    .line 317
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_1
    const-string v5, "comparator"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 327
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/SortFilter;->setComparator(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Value of comparator attribute should implement java.util.Comparator interface"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catch_1
    move-exception v0

    .line 337
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 342
    :cond_2
    return-void
.end method

.method private sort()V
    .registers 3

    .line 350
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-static {}, Lorg/apache/tools/ant/filters/SortFilter$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/SortFilter;->setComparator(Ljava/util/Comparator;)V

    .line 308
    return-void

    .line 305
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "can\'t have more than one comparator"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 249
    new-instance v0, Lorg/apache/tools/ant/filters/SortFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/SortFilter;-><init>(Ljava/io/Reader;)V

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->isReverse()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/SortFilter;->setReverse(Z)V

    .line 251
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/SortFilter;->setComparator(Ljava/util/Comparator;)V

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/SortFilter;->setInitialized(Z)V

    .line 253
    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public isReverse()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->reverse:Z

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SortFilter;->initialize()V

    .line 198
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/SortFilter;->setInitialized(Z)V

    .line 201
    :cond_0
    const/4 v1, -0x1

    .line 202
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 208
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 209
    iput-object v3, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 235
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    if-nez v0, :cond_4

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    .line 217
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 218
    iget-object v2, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    :cond_3
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SortFilter;->sort()V

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    .line 224
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 231
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SortFilter;->read()I

    move-result v0

    goto :goto_0

    .line 227
    :cond_5
    iput-object v3, p0, Lorg/apache/tools/ant/filters/SortFilter;->line:Ljava/lang/String;

    .line 228
    iput-object v3, p0, Lorg/apache/tools/ant/filters/SortFilter;->lines:Ljava/util/List;

    .line 229
    iput-object v3, p0, Lorg/apache/tools/ant/filters/SortFilter;->iterator:Ljava/util/Iterator;

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->comparator:Ljava/util/Comparator;

    .line 295
    return-void
.end method

.method public setReverse(Z)V
    .registers 2

    .line 275
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/SortFilter;->reverse:Z

    .line 276
    return-void
.end method
