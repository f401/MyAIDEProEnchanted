.class public final enum Lcom/google/android/gms/internal/measurement/Ob;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/Ob;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/measurement/Ob;

.field private static final EQ:[Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum FH:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum Hw:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum VH:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum Zo:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum gn:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum j6:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum tp:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum u7:Lcom/google/android/gms/internal/measurement/Ob;

.field public static final enum v5:Lcom/google/android/gms/internal/measurement/Ob;


# instance fields
.field private final J0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final J8:Ljava/lang/Object;

.field private final we:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 27

    new-instance v6, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/Ob;->j6:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v8, "INT"

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ob;->DW:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v2, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v14, "LONG"

    const/4 v15, 0x2

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/Ob;->FH:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v3, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/Ob;->Hw:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v4, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v14, "DOUBLE"

    const/4 v15, 0x4

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/Double;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/Ob;->v5:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v5, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/Ob;->Zo:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v7, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v14, "STRING"

    const/4 v15, 0x6

    const-class v16, Ljava/lang/String;

    const-class v17, Ljava/lang/String;

    const-string v18, ""

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/Ob;->VH:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v14, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v9, "BYTE_STRING"

    const/4 v10, 0x7

    const-class v11, Lcom/google/android/gms/internal/measurement/Wa;

    const-class v12, Lcom/google/android/gms/internal/measurement/Wa;

    sget-object v13, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/Ob;->gn:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v8, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v16, "ENUM"

    const/16 v17, 0x8

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v19, Ljava/lang/Integer;

    const/16 v20, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/Ob;->u7:Lcom/google/android/gms/internal/measurement/Ob;

    new-instance v9, Lcom/google/android/gms/internal/measurement/Ob;

    const-string v22, "MESSAGE"

    const/16 v23, 0x9

    const-class v24, Ljava/lang/Object;

    const-class v25, Ljava/lang/Object;

    const/16 v26, 0x0

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/measurement/Ob;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/Ob;->tp:Lcom/google/android/gms/internal/measurement/Ob;

    const/16 v10, 0xa

    new-array v10, v10, [Lcom/google/android/gms/internal/measurement/Ob;

    aput-object v6, v10, v1

    const/4 v1, 0x1

    aput-object v0, v10, v1

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v14, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    sput-object v10, Lcom/google/android/gms/internal/measurement/Ob;->EQ:[Lcom/google/android/gms/internal/measurement/Ob;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Ob;->we:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/Ob;->J0:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/Ob;->J8:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/Ob;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Ob;->EQ:[Lcom/google/android/gms/internal/measurement/Ob;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/Ob;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/Ob;

    return-object v0
.end method


# virtual methods
.method public final Hw()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ob;->J0:Ljava/lang/Class;

    return-object v0
.end method
