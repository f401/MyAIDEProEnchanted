.class final Lcom/google/android/gms/internal/measurement/_c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/_c$a;,
        Lcom/google/android/gms/internal/measurement/_c$b;,
        Lcom/google/android/gms/internal/measurement/_c$c;,
        Lcom/google/android/gms/internal/measurement/_c$d;
    }
.end annotation


# static fields
.field private static final DW:Lsun/misc/Unsafe;

.field private static final EQ:J

.field private static final FH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final Hw:Z

.field private static final J0:J

.field private static final J8:J

.field private static final Mr:J

.field private static final QX:J

.field private static final U2:J

.field private static final VH:Z

.field private static final Ws:J

.field private static final XL:J

.field private static final Zo:Lcom/google/android/gms/internal/measurement/_c$d;

.field private static final a8:J

.field private static final aM:J

.field private static final gn:Z

.field private static final j3:J

.field private static final j6:Ljava/util/logging/Logger;

.field private static final lg:Z

.field private static final tp:J

.field private static final u7:J

.field private static final v5:Z

.field private static final we:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/_c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/_c;->j6:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->Hw()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/_c;->DW:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->DW()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/_c;->FH:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/_c;->Hw(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/_c;->Hw:Z

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/_c;->Hw(Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/gms/internal/measurement/_c;->v5:Z

    if-nez v0, :cond_2b

    goto :goto_41

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v3

    if-eqz v3, :cond_43

    if-eqz v1, :cond_39

    new-instance v1, Lcom/google/android/gms/internal/measurement/_c$b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/_c$b;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_48

    :cond_39
    if-eqz v2, :cond_41

    new-instance v1, Lcom/google/android/gms/internal/measurement/_c$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/_c$a;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_48

    :cond_41
    :goto_41
    const/4 v1, 0x0

    goto :goto_48

    :cond_43
    new-instance v1, Lcom/google/android/gms/internal/measurement/_c$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/_c$c;-><init>(Lsun/misc/Unsafe;)V

    :goto_48
    sput-object v1, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->VH()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->VH:Z

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->Zo()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->gn:Z

    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->u7:J

    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->tp:J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->EQ:J

    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->we:J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->J0:J

    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->J8:J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->Ws:J

    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->QX:J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->XL:J

    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->aM:J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->j3:J

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->Mr:J

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/measurement/_c;->U2:J

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->gn()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_d1

    if-nez v1, :cond_ca

    goto :goto_d1

    :cond_ca
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/_c$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_d3

    :cond_d1
    :goto_d1
    const-wide/16 v0, -0x1

    :goto_d3
    sput-wide v0, Lcom/google/android/gms/internal/measurement/_c;->a8:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_df

    const/4 v0, 0x1

    goto :goto_e0

    :cond_df
    const/4 v0, 0x0

    :goto_e0
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->lg:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DW(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->gn:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/_c$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static DW(Ljava/lang/Object;J)J
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c$d;->DW(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic DW(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->Hw(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic DW(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->Hw(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static DW()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->gn:Z

    return v0
.end method

.method private static EQ(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static FH(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->gn:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/_c$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static FH(Ljava/lang/Object;JB)V
    .registers 7

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    and-int/2addr p3, p2

    shl-int/2addr p3, p1

    shl-int p1, p2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic FH(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->v5(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static FH()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->VH:Z

    return v0
.end method

.method static FH(Ljava/lang/Object;J)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c$d;->FH(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static Hw(Ljava/lang/Object;J)F
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c$d;->Hw(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static Hw()Lsun/misc/Unsafe;
    .registers 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ad;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method private static Hw(Ljava/lang/Object;JB)V
    .registers 7

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    and-int/2addr p3, p2

    shl-int/2addr p3, p1

    shl-int p1, p2, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static Hw(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static Hw(Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/_c;->FH:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_88
    .catchall {:try_start_a .. :try_end_88} :catchall_89

    return v7

    :catchall_89
    move-exception p0

    return v2
.end method

.method private static J0(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->EQ(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static J8(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->we(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic VH(Ljava/lang/Object;J)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->EQ(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static VH()Z
    .registers 9

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    sget-object v2, Lcom/google/android/gms/internal/measurement/_c;->DW:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    :cond_a
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->gn()Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_2f

    return v3

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v6

    if-eqz v6, :cond_36

    return v5

    :cond_36
    const-string v6, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v1, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_af
    .catchall {:try_start_a .. :try_end_af} :catchall_b0

    return v5

    :catchall_b0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/_c;->j6:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x47

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.protobuf.UnsafeUtil"

    invoke-virtual {v1, v2, v5, v0, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method static Zo(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/_c$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static Zo()Z
    .registers 8

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->DW:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v2

    if-eqz v2, :cond_9b

    return v3

    :cond_9b
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_123
    .catchall {:try_start_6 .. :try_end_123} :catchall_124

    return v3

    :catchall_124
    move-exception v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/_c;->j6:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x47

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsUnsafeArrayOperations"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.protobuf.UnsafeUtil"

    invoke-virtual {v2, v3, v5, v0, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic gn(Ljava/lang/Object;J)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->we(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static gn()Ljava/lang/reflect/Field;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v0

    if-eqz v0, :cond_11

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method static j6([BJ)B
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/_c;->u7:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/_c$d;->Zo(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static j6(Ljava/lang/Object;J)I
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static j6(Ljava/nio/ByteBuffer;)J
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/_c;->a8:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/_c$d;->DW(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->DW:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static j6(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p0

    const/4 p0, 0x0

    :goto_b
    return-object p0
.end method

.method static j6(JB)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(JB)V

    return-void
.end method

.method static synthetic j6(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Object;JB)V

    return-void
.end method

.method static j6(Ljava/lang/Object;JD)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JD)V

    return-void
.end method

.method static j6(Ljava/lang/Object;JF)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JF)V

    return-void
.end method

.method static j6(Ljava/lang/Object;JI)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JI)V

    return-void
.end method

.method static j6(Ljava/lang/Object;JJ)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static j6(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/_c$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static j6(Ljava/lang/Object;JZ)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static j6([BJB)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/_c;->u7:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JB)V

    return-void
.end method

.method static j6([BJJJ)V
    .registers 15

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/_c$d;->j6([BJJJ)V

    return-void
.end method

.method static synthetic j6()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/_c;->lg:Z

    return v0
.end method

.method static synthetic tp(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->J8(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic u7(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c;->J0(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static v5(Ljava/lang/Object;J)D
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/_c;->Zo:Lcom/google/android/gms/internal/measurement/_c$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/_c$d;->v5(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic v5()J
    .registers 2

    sget-wide v0, Lcom/google/android/gms/internal/measurement/_c;->u7:J

    return-wide v0
.end method

.method private static v5(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->Hw(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static we(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method
