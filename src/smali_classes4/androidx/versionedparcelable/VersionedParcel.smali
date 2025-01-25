.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# static fields
.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final TAG:Ljava/lang/String; = "VersionedParcel"

.field private static final TYPE_BINDER:I = 0x5

.field private static final TYPE_FLOAT:I = 0x8

.field private static final TYPE_INTEGER:I = 0x7

.field private static final TYPE_PARCELABLE:I = 0x2

.field private static final TYPE_SERIALIZABLE:I = 0x3

.field private static final TYPE_STRING:I = 0x4

.field private static final TYPE_VERSIONED_PARCELABLE:I = 0x1


# instance fields
.field protected final mParcelizerCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReadCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriteCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private createException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 5

    packed-switch p1, :pswitch_data_54

    :pswitch_3  #0xfffffff8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown exception code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_21
    return-object v0

    :pswitch_22  #0xffffffff
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_28  #0xfffffffe
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2e  #0xfffffffd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_34  #0xfffffffc
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_3a  #0xfffffffb
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_40  #0xfffffffa
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    goto :goto_21

    :pswitch_46  #0xfffffff9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_4c  #0xfffffff7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_21

    nop

    :pswitch_data_54
    .packed-switch -0x9
        :pswitch_4c  #fffffff7
        :pswitch_3  #fffffff8
        :pswitch_46  #fffffff9
        :pswitch_40  #fffffffa
        :pswitch_3a  #fffffffb
        :pswitch_34  #fffffffc
        :pswitch_2e  #fffffffd
        :pswitch_28  #fffffffe
        :pswitch_22  #ffffffff
    .end packed-switch
.end method

.method private findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_3a

    const-string v0, "%s.%sParcelizer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-object v0
.end method

.method private getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "read"

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_b
    return-object p0
.end method

.method private getType(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    :goto_5
    return v0

    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    instance-of v0, p1, Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_5

    :cond_12
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_18

    const/4 v0, 0x3

    goto :goto_5

    :cond_18
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_1e

    const/4 v0, 0x5

    goto :goto_5

    :cond_1e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    const/4 v0, 0x7

    goto :goto_5

    :cond_24
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2b

    const/16 v0, 0x8

    goto :goto_5

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be VersionedParcelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_2f

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v1, "write"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-object v0
.end method

.method private readCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection",
            "<TT;>;>(TS;)TS;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_9

    move-object p1, v0

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    if-gez v1, :cond_13

    move-object p1, v0

    goto :goto_8

    :cond_13
    const/4 v0, 0x1

    if-eq v2, v0, :cond_5e

    const/4 v0, 0x2

    if-eq v2, v0, :cond_46

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3a

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2e

    const/4 v0, 0x5

    if-ne v2, v0, :cond_8

    :goto_22
    if-lez v1, :cond_8

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_2e
    :goto_2e
    if-lez v1, :cond_8

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    :cond_3a
    :goto_3a
    if-lez v1, :cond_8

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    :cond_46
    :goto_46
    if-lez v1, :cond_8

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    :goto_52
    if-lez v0, :cond_8

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    :cond_5e
    move v0, v1

    goto :goto_52
.end method

.method private readException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private readExceptionCode()I
    .registers 2

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    return v0
.end method

.method private writeCollection(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    if-lez v0, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    packed-switch v0, :pswitch_data_b8

    :pswitch_22  #0x6
    goto :goto_6

    :pswitch_23  #0x1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    goto :goto_27

    :pswitch_37  #0x8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    goto :goto_3b

    :pswitch_4f  #0x7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_53

    :pswitch_67  #0x5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_6b

    :pswitch_7b  #0x4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    goto :goto_7f

    :pswitch_8f  #0x3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_93

    :pswitch_a3  #0x2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    goto :goto_a7

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_a3  #00000002
        :pswitch_8f  #00000003
        :pswitch_7b  #00000004
        :pswitch_67  #00000005
        :pswitch_22  #00000006
        :pswitch_4f  #00000007
        :pswitch_37  #00000008
    .end packed-switch
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    return-void
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .registers 6

    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_17
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_6

    :catch_2a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionedParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_10

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Parcelizer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected readArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    if-ltz v1, :cond_7

    const/4 v0, 0x1

    if-eq v3, v0, :cond_65

    const/4 v0, 0x2

    if-eq v3, v0, :cond_4d

    const/4 v0, 0x3

    if-eq v3, v0, :cond_41

    const/4 v0, 0x4

    if-eq v3, v0, :cond_35

    const/4 v0, 0x5

    if-eq v3, v0, :cond_29

    :cond_24
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_29
    :goto_29
    if-lez v1, :cond_24

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_35
    :goto_35
    if-lez v1, :cond_24

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    :cond_41
    :goto_41
    if-lez v1, :cond_24

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    :cond_4d
    :goto_4d
    if-lez v1, :cond_24

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    :goto_59
    if-lez v0, :cond_24

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    :cond_65
    move v0, v1

    goto :goto_59
.end method

.method public readArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result p1

    goto :goto_6
.end method

.method protected readBooleanArray()[Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v4

    if-gez v4, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-array v2, v4, [Z

    move v3, v1

    :goto_c
    if-ge v3, v4, :cond_1d

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_15
    aput-boolean v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_1b
    move v0, v1

    goto :goto_15

    :cond_1d
    move-object v0, v2

    goto :goto_8
.end method

.method public readBooleanArray([ZI)[Z
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_6
.end method

.method public readByte(BI)B
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte p1, v0

    goto :goto_6
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object p1

    goto :goto_6
.end method

.method public readCharArray([CI)[C
    .registers 6

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_f

    const/4 p1, 0x0

    goto :goto_6

    :cond_f
    new-array p1, v1, [C

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method protected abstract readCharSequence()Ljava/lang/CharSequence;
.end method

.method public readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readDouble()D
.end method

.method public readDouble(DI)D
    .registers 5

    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide p1

    goto :goto_6
.end method

.method protected readDoubleArray()[D
    .registers 7

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [D

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public readDoubleArray([DI)[D
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    move-result-object p1

    goto :goto_6
.end method

.method public readException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .registers 5

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;->readExceptionCode()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result p1

    goto :goto_6
.end method

.method protected readFloatArray()[F
    .registers 5

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [F

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public readFloatArray([FI)[F
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    move-result-object p1

    goto :goto_6
.end method

.method protected readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_34
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result p1

    goto :goto_6
.end method

.method protected readIntArray()[I
    .registers 5

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public readIntArray([II)[I
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    move-result-object p1

    goto :goto_6
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object p1, v0

    goto :goto_6
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .registers 5

    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide p1

    goto :goto_6
.end method

.method protected readLongArray()[J
    .registers 7

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    if-gez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [J

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public readLongArray([JI)[J
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    move-result-object p1

    goto :goto_6
.end method

.method public readMap(Ljava/util/Map;I)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;I)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_f

    const/4 p1, 0x0

    goto :goto_6

    :cond_f
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v1, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_6
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .registers 5

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_11
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$1;

    invoke-direct {v2, p0, v0}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_7

    :catch_1d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionedParcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;I)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object p1, v0

    goto :goto_6
.end method

.method public readSize(Landroid/util/Size;I)Landroid/util/Size;
    .registers 5

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_6

    :cond_1b
    const/4 p1, 0x0

    goto :goto_6
.end method

.method public readSizeF(Landroid/util/SizeF;I)Landroid/util/SizeF;
    .registers 5

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p1, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v0

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    goto :goto_6

    :cond_1b
    const/4 p1, 0x0

    goto :goto_6
.end method

.method public readSparseBooleanArray(Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .registers 7

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    if-gez v1, :cond_f

    const/4 p1, 0x0

    goto :goto_6

    :cond_f
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_6
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    goto :goto_7
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    goto :goto_6
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .registers 3

    return-void
.end method

.method protected writeArray([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_7
    return-void

    :cond_8
    array-length v2, p1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    if-lez v2, :cond_7

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_68

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    move v1, v0

    :goto_27
    if-ge v1, v2, :cond_7

    aget-object v0, p1, v1

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :goto_34
    if-ge v1, v2, :cond_7

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :goto_41
    if-ge v1, v2, :cond_7

    aget-object v0, p1, v1

    check-cast v0, Ljava/io/Serializable;

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :goto_4e
    if-ge v1, v2, :cond_7

    aget-object v0, p1, v1

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4e

    :goto_5b
    if-ge v1, v2, :cond_7

    aget-object v0, p1, v1

    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    :cond_68
    move v1, v0

    goto :goto_34

    :cond_6a
    move v1, v0

    goto :goto_41

    :cond_6c
    move v1, v0

    goto :goto_4e

    :cond_6e
    move v1, v0

    goto :goto_5b
.end method

.method public writeArray([Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    return-void
.end method

.method protected writeBooleanArray([Z)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v1, p1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    aget-boolean v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public writeBooleanArray([ZI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public writeByte(BI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    return-void
.end method

.method protected abstract writeByteArray([BII)V
.end method

.method public writeByteArray([BIII)V
    .registers 5

    invoke-virtual {p0, p4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BII)V

    return-void
.end method

.method public writeCharArray([CI)V
    .registers 6

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    if-eqz p1, :cond_14

    array-length v1, p1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_18

    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_18
    return-void
.end method

.method protected abstract writeCharSequence(Ljava/lang/CharSequence;)V
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract writeDouble(D)V
.end method

.method public writeDouble(DI)V
    .registers 5

    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    return-void
.end method

.method protected writeDoubleArray([D)V
    .registers 6

    if-eqz p1, :cond_11

    array-length v1, p1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public writeDoubleArray([DI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    return-void
.end method

.method public writeException(Ljava/lang/Exception;I)V
    .registers 7

    const/16 v1, -0x9

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->writeNoException()V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_2d

    move v0, v1

    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    if-nez v0, :cond_5d

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_57

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_2d
    instance-of v2, p1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_33

    const/4 v0, -0x1

    goto :goto_21

    :cond_33
    instance-of v2, p1, Landroid/os/BadParcelableException;

    if-eqz v2, :cond_39

    const/4 v0, -0x2

    goto :goto_21

    :cond_39
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_3f

    const/4 v0, -0x3

    goto :goto_21

    :cond_3f
    instance-of v2, p1, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_45

    const/4 v0, -0x4

    goto :goto_21

    :cond_45
    instance-of v2, p1, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_4b

    const/4 v0, -0x5

    goto :goto_21

    :cond_4b
    instance-of v2, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v2, :cond_51

    const/4 v0, -0x6

    goto :goto_21

    :cond_51
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_21

    const/4 v0, -0x7

    goto :goto_21

    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5d
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    if-ne v0, v1, :cond_a

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    goto :goto_a
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    return-void
.end method

.method protected writeFloatArray([F)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v1, p1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public writeFloatArray([FI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    return-void
.end method

.method protected writeIntArray([I)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v1, p1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public writeIntArray([II)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .registers 5

    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    return-void
.end method

.method protected writeLongArray([J)V
    .registers 6

    if-eqz p1, :cond_11

    array-length v1, p1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_15

    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public writeLongArray([JI)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    return-void
.end method

.method public writeMap(Ljava/util/Map;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    if-nez p1, :cond_a

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    if-eqz v0, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_40
    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    goto :goto_9
.end method

.method protected writeNoException()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    return-void
.end method

.method public writeSerializable(Ljava/io/Serializable;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    return-void
.end method

.method public writeSize(Landroid/util/Size;I)V
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public writeSizeF(Landroid/util/SizeF;I)V
    .registers 4

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public writeSparseBooleanArray(Landroid/util/SparseBooleanArray;I)V
    .registers 6

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    if-nez p1, :cond_a

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_9

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method protected abstract writeStrongInterface(Landroid/os/IInterface;)V
.end method

.method public writeStrongInterface(Landroid/os/IInterface;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method

.method protected writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_38
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_40
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    goto :goto_6
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .registers 3

    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method
