.class public final enum Lcom/google/android/gms/internal/measurement/nd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/measurement/nd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum FH:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum Hw:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum VH:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum Zo:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum gn:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum j6:Lcom/google/android/gms/internal/measurement/nd;

.field private static final tp:[Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum u7:Lcom/google/android/gms/internal/measurement/nd;

.field public static final enum v5:Lcom/google/android/gms/internal/measurement/nd;


# instance fields
.field private final EQ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v0, Lcom/google/android/gms/internal/measurement/nd;

    const-string v1, "INT"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v1, Lcom/google/android/gms/internal/measurement/nd;

    const-string v2, "LONG"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v13, v3}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v2, Lcom/google/android/gms/internal/measurement/nd;

    const-string v3, "FLOAT"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v14, v4}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/nd;->FH:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v3, Lcom/google/android/gms/internal/measurement/nd;

    const-string v4, "DOUBLE"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v15, v5}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/nd;->Hw:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v4, Lcom/google/android/gms/internal/measurement/nd;

    const-string v5, "BOOLEAN"

    const/4 v6, 0x4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/nd;->v5:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v5, Lcom/google/android/gms/internal/measurement/nd;

    const-string v6, "STRING"

    const/4 v7, 0x5

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/nd;->Zo:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v6, Lcom/google/android/gms/internal/measurement/nd;

    const-string v7, "BYTE_STRING"

    const/4 v8, 0x6

    sget-object v9, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/nd;->VH:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v7, Lcom/google/android/gms/internal/measurement/nd;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v12}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/nd;->gn:Lcom/google/android/gms/internal/measurement/nd;

    new-instance v8, Lcom/google/android/gms/internal/measurement/nd;

    const-string v9, "MESSAGE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v12}, Lcom/google/android/gms/internal/measurement/nd;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/google/android/gms/internal/measurement/nd;

    aput-object v0, v9, v11

    aput-object v1, v9, v13

    aput-object v2, v9, v14

    aput-object v3, v9, v15

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lcom/google/android/gms/internal/measurement/nd;->tp:[Lcom/google/android/gms/internal/measurement/nd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/nd;->EQ:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/nd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/nd;->tp:[Lcom/google/android/gms/internal/measurement/nd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/nd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/nd;

    return-object v0
.end method
