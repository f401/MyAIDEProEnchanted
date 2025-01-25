.class public Labcd/FF;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Labcd/FF;",
            ">;"
        }
    .end annotation
.end field

.field public static final j6:Ljava/util/Locale;


# instance fields
.field private final FH:Ljava/util/Locale;

.field private final Hw:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Labcd/GF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/FF;->j6:Ljava/util/Locale;

    new-instance v0, Labcd/EF;

    invoke-direct {v0}, Labcd/EF;-><init>()V

    sput-object v0, Labcd/FF;->DW:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Labcd/FF;->Hw:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Labcd/FF;->FH:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Labcd/FF;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/FF;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private DW(Ljava/lang/Class;)Labcd/GF;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/GF;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/FF;->Hw:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/GF;

    if-nez v0, :cond_1b

    iget-object v0, p0, Labcd/FF;->FH:Ljava/util/Locale;

    invoke-static {v0, p1}, Labcd/DF;->j6(Ljava/util/Locale;Ljava/lang/Class;)Labcd/GF;

    move-result-object v0

    iget-object v1, p0, Labcd/FF;->Hw:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/GF;

    if-eqz p1, :cond_1b

    move-object v0, p1

    :cond_1b
    return-object v0
.end method

.method public static j6(Ljava/lang/Class;)Labcd/GF;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/GF;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Labcd/FF;->DW:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/FF;

    invoke-direct {v0, p0}, Labcd/FF;->DW(Ljava/lang/Class;)Labcd/GF;

    move-result-object p0

    return-object p0
.end method
