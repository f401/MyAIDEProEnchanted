.class public final Lcom/google/android/gms/internal/ads/Fe;
.super Lcom/google/android/gms/internal/ads/He;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/Cf;


# instance fields
.field private DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Cf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Cf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Fe;->j6:Lcom/google/android/gms/internal/ads/Cf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/He;-><init>()V

    return-void
.end method

.method private final dx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NetworkExtrasT::",
            "Lcom/google/ads/mediation/f;",
            "ServerParametersT:",
            "Lcom/google/ads/mediation/e;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/Je;"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/ads/Fe;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/google/ads/mediation/b;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_33

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/b;

    new-instance v1, Lcom/google/android/gms/internal/ads/if;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fe;->DW:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->getAdditionalParametersType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/mediation/f;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/if;-><init>(Lcom/google/ads/mediation/b;Lcom/google/ads/mediation/f;)V

    return-object v1

    :cond_33
    const-class v2, Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4f

    new-instance v2, Lcom/google/android/gms/internal/ads/df;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/b;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    return-object v2

    :cond_4f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Could not instantiate mediation adapter: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (not a valid adapter)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_78
    .catchall {:try_start_0 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Fe;->sG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object p1

    return-object p1
.end method

.method private final sG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;
    .registers 6

    :try_start_0
    const-string v0, "Reflection failed, retrying using direct instantiation"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/df;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    return-object v1

    :cond_18
    const-string v0, "com.google.ads.mediation.AdUrlAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/df;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    return-object v1

    :cond_2b
    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventAdapter;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/df;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/df;-><init>(Lcom/google/android/gms/ads/mediation/b;)V

    return-object v1

    :cond_3e
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    new-instance v0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/if;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fe;->DW:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->getAdditionalParametersType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/mediation/customevent/c;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/if;-><init>(Lcom/google/ads/mediation/b;Lcom/google/ads/mediation/f;)V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5d

    return-object v1

    :catchall_5d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_81
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a8(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yf;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cf;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yf;

    move-result-object p1

    return-object p1
.end method

.method public final er(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/ads/mediation/customevent/a;

    const-class v2, Lcom/google/android/gms/internal/ads/Fe;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    return p1

    :catchall_12
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not load custom event implementation class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", assuming old implementation."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return v0
.end method

.method public final j6(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fe;->DW:Ljava/util/Map;

    return-void
.end method

.method public final rN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Fe;->dx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Je;

    move-result-object p1

    return-object p1
.end method
