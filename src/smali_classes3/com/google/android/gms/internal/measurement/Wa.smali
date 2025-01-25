.class public abstract Lcom/google/android/gms/internal/measurement/Wa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final DW:Lcom/google/android/gms/internal/measurement/bb;

.field private static final FH:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/measurement/Wa;",
            ">;"
        }
    .end annotation
.end field

.field public static final j6:Lcom/google/android/gms/internal/measurement/Wa;


# instance fields
.field private Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/fb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Hb;->FH:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fb;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Ta;->j6()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/measurement/gb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/gb;-><init>(Lcom/google/android/gms/internal/measurement/Xa;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/measurement/_a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/_a;-><init>(Lcom/google/android/gms/internal/measurement/Xa;)V

    :goto_1b
    sput-object v0, Lcom/google/android/gms/internal/measurement/Wa;->DW:Lcom/google/android/gms/internal/measurement/bb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ya;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Ya;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Wa;->FH:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Wa;->Hw:I

    return-void
.end method

.method private static DW(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static DW(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    if-ltz p0, :cond_50

    if-ge p1, p0, :cond_2f

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x42

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    return v0
.end method

.method static VH(I)Lcom/google/android/gms/internal/measurement/db;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/db;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/db;-><init>(ILcom/google/android/gms/internal/measurement/Xa;)V

    return-object v0
.end method

.method static synthetic j6(B)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/Wa;->DW(B)I

    move-result p0

    return p0
.end method

.method public static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Wa;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/fb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/fb;-><init>([B)V

    return-object v0
.end method

.method static j6([B)Lcom/google/android/gms/internal/measurement/Wa;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/fb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/fb;-><init>([B)V

    return-object v0
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/measurement/Wa;
    .registers 5

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/Wa;->DW(III)I

    new-instance v0, Lcom/google/android/gms/internal/measurement/fb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Wa;->DW:Lcom/google/android/gms/internal/measurement/bb;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/bb;->j6([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/fb;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract DW()Z
.end method

.method protected final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Wa;->Hw:I

    return v0
.end method

.method abstract Zo(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Wa;->Hw:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/measurement/Wa;->j6(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/Wa;->Hw:I

    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/Xa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/Xa;-><init>(Lcom/google/android/gms/internal/measurement/Wa;)V

    return-object v0
.end method

.method protected abstract j6(III)I
.end method

.method public abstract j6(II)Lcom/google/android/gms/internal/measurement/Wa;
.end method

.method public final j6()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Wa;->j6(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j6(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract j6(Lcom/google/android/gms/internal/measurement/Va;)V
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract v5(I)B
.end method
