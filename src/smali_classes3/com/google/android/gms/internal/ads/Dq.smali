.class public final Lcom/google/android/gms/internal/ads/Dq;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/uq;",
            ">;"
        }
    .end annotation
.end field

.field private static final FH:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final Hw:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/oq;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Dq;->j6:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Dq;->DW:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Dq;->FH:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Dq;->Hw:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DW(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ds;",
            ")",
            "Lcom/google/android/gms/internal/ads/Pu;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Dq;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/uq;->FH(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_4b

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit v0

    return-object p0

    :cond_29
    :try_start_29
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "newKey-operation not permitted for key type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    :cond_40
    new-instance p0, Ljava/lang/String;

    const-string v1, "newKey-operation not permitted for key type "

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_47
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit v0

    throw p0
.end method

.method private static DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/uq<",
            "TP;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/Dq;->DW:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uq;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No key manager found for key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".  Check the configuration of the registry."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static DW(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ")TP;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/uq;->j6(Lcom/google/android/gms/internal/ads/Pu;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/vq;Lcom/google/android/gms/internal/ads/uq;)Lcom/google/android/gms/internal/ads/Aq;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/vq;",
            "Lcom/google/android/gms/internal/ads/uq<",
            "TP;>;)",
            "Lcom/google/android/gms/internal/ads/Aq<",
            "TP;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vq;->j6()Lcom/google/android/gms/internal/ads/hs;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Eq;->DW(Lcom/google/android/gms/internal/ads/hs;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Aq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Aq;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vq;->j6()Lcom/google/android/gms/internal/ads/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hs;->J0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hs$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hs$b;->Ws()Lcom/google/android/gms/internal/ads/as;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    if-ne v2, v3, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Yr;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hs$b;->J0()Lcom/google/android/gms/internal/ads/Yr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Yr;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Aq;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/hs$b;)Lcom/google/android/gms/internal/ads/Cq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hs$b;->QX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vq;->j6()Lcom/google/android/gms/internal/ads/hs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/hs;->EQ()I

    move-result v3

    if-ne v1, v3, :cond_18

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Aq;->j6(Lcom/google/android/gms/internal/ads/Cq;)V

    goto :goto_18

    :cond_56
    return-object p1
.end method

.method public static j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ")",
            "Lcom/google/android/gms/internal/ads/Pu;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Dq;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/uq;->DW(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3b

    const-class p1, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p1

    return-object p0

    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "newKey-operation not permitted for key type "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_30
    new-instance p0, Ljava/lang/String;

    const-string v0, "newKey-operation not permitted for key type "

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_37
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p1

    throw p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Yr;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ds;",
            ")",
            "Lcom/google/android/gms/internal/ads/Yr;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Dq;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->J0()Lcom/google/android/gms/internal/ads/yt;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/uq;->j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Yr;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_4b

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit v0

    return-object p0

    :cond_29
    :try_start_29
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "newKey-operation not permitted for key type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    :cond_40
    new-instance p0, Ljava/lang/String;

    const-string v1, "newKey-operation not permitted for key type "

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_47
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit v0

    throw p0
.end method

.method public static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/oq;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/oq<",
            "TP;>;"
        }
    .end annotation

    if-eqz p0, :cond_c6

    sget-object v0, Lcom/google/android/gms/internal/ads/Dq;->Hw:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/oq;

    if-nez v0, :cond_c5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "no catalogue found for %s. "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Maybe call AeadConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_32
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkdeterministicaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkstreamingaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkhybriddecrypt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkhybridencrypt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkmac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkpublickeysign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tinkpublickeyverify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tink"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bf

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call TinkConfig.register()."

    goto :goto_bb

    :cond_99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call SignatureConfig.register()."

    goto :goto_bb

    :cond_a0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call MacConfig.register()."

    goto :goto_bb

    :cond_a7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call HybridConfig.register()."

    goto :goto_bb

    :cond_ae
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call StreamingAeadConfig.register()."

    goto :goto_bb

    :cond_b5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Maybe call DeterministicAeadConfig.register()."

    :goto_bb
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_bf
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    return-object v0

    :cond_c6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "catalogueName must be non-null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/yt;",
            ")TP;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/uq;->DW(Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;[B)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B)TP;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->j6([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/yt;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/uq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/uq<",
            "TP;>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-enter v0

    const/4 v0, 0x1

    :try_start_4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Lcom/google/android/gms/internal/ads/uq;Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    const-class p0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit v0

    throw p0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/uq;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/uq<",
            "TP;>;Z)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-enter v0

    if-eqz p0, :cond_8e

    :try_start_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/uq;->j6()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/Dq;->DW:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/Dq;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    if-nez v3, :cond_7e

    if-eqz p1, :cond_7e

    :cond_33
    sget-object p1, Lcom/google/android/gms/internal/ads/Dq;->j6:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_48

    const-string v4, "Attempted overwrite of a registered key manager for key type "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4f

    :cond_48
    new-instance v3, Ljava/lang/String;

    const-string v4, "Attempted overwrite of a registered key manager for key type "

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4f
    const-string v4, "com.google.crypto.tink.Registry"

    const-string v5, "registerKeyManager"

    invoke-virtual {p1, v1, v4, v5, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v1, "typeUrl (%s) is already registered with %s, cannot be re-registered with %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/internal/ads/Dq;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_96

    const-class p0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p0

    return-void

    :cond_8e
    :try_start_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key manager must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p1

    throw p0
.end method

.method public static j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/oq<",
            "TP;>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/Dq;->Hw:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/oq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    sget-object p1, Lcom/google/android/gms/internal/ads/Dq;->j6:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "Attempted overwrite of a catalogueName catalogue for name "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_3c
    new-instance v1, Ljava/lang/String;

    const-string v2, "Attempted overwrite of a catalogueName catalogue for name "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    const-string v2, "com.google.crypto.tink.Registry"

    const-string v3, "addCatalogue"

    invoke-virtual {p1, v0, v2, v3, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2f

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "catalogue for name "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has been already registered"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_7b

    const-class p0, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p0

    return-void

    :catchall_7b
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/ads/Dq;

    monitor-exit p1

    throw p0
.end method
