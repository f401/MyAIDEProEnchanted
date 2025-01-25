.class public Lcom/aide/engine/Modification;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/aide/engine/Modification;",
            ">;"
        }
    .end annotation
.end field

.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2b6ed2c694abd360L
    .end annotation
.end field

.field private FH:I
    .annotation runtime Labcd/ru;
        field = -0x3a8bf8b1604f2d7L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x1c0b532e988d0991L
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = 0xf666d5f58e9b80dL
    .end annotation
.end field

.field private J8:I
    .annotation runtime Labcd/ru;
        field = -0x2a272cb0050b6200L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0xd0e685f1f704950L
    .end annotation
.end field

.field private Ws:I
    .annotation runtime Labcd/ru;
        field = -0x1b0bd85e09cbe51bL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x21513625ac6d19c8L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x61c6c9a55d07ea7L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x108327951d1fb450L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x476972bcc8cd6387L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x3d4ff129c322e15fL
    .end annotation
.end field

.field private we:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x5f8893b92dcb1e8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x19bd4377a53adadfL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x11d146c57f31fa1L

    :try_start_6
    const-class v3, Lcom/aide/engine/Modification;

    const-wide v4, 0x2fd53886793dbca8L  # 2.8635378456179757E-78

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/G;

    invoke-direct {v3}, Lcom/aide/engine/G;-><init>()V

    sput-object v3, Lcom/aide/engine/Modification;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method protected constructor <init>(IIIILjava/lang/String;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x3a83deb8745ba700L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x40f97ed7611582fbL  # -4.292397703875055E-5

    const/4 v3, 0x0

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p2, p0, Lcom/aide/engine/Modification;->v5:I

    iput p3, p0, Lcom/aide/engine/Modification;->Zo:I

    iput p4, p0, Lcom/aide/engine/Modification;->VH:I

    iput-object p5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, -0x40f97ed7611582fbL  # -4.292397703875055E-5

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method protected constructor <init>(IIIILjava/lang/String;II)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xcb40059c6892100L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_43

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v2, 0x4

    aput-object p5, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-wide v2, -0x4fb0e9f1e883325L  # -3.892802926550655E284

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p2, p0, Lcom/aide/engine/Modification;->v5:I

    iput p3, p0, Lcom/aide/engine/Modification;->Zo:I

    iput p4, p0, Lcom/aide/engine/Modification;->VH:I

    iput-object p5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput p6, p0, Lcom/aide/engine/Modification;->gn:I

    iput p7, p0, Lcom/aide/engine/Modification;->u7:I

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;IIZ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xc4f0f459c25c6bL
    .end annotation

    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_4c

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p5, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    const-wide v2, 0xf0ba839d6c61230L  # 3.397821527691651E-236

    const/4 p8, 0x0

    invoke-static {v2, v3, p8, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_4c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p2, p0, Lcom/aide/engine/Modification;->v5:I

    iput p3, p0, Lcom/aide/engine/Modification;->Zo:I

    iput p4, p0, Lcom/aide/engine/Modification;->VH:I

    iput-object p5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput p6, p0, Lcom/aide/engine/Modification;->gn:I

    iput p7, p0, Lcom/aide/engine/Modification;->u7:I

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xb8ab1f889e6ab31L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p5, v0, v2

    const/4 v2, 0x5

    aput-object p6, v0, v2

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-wide v2, -0x5068b13f5dc70370L  # -1.9657089272840415E-79

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p2, p0, Lcom/aide/engine/Modification;->v5:I

    iput p3, p0, Lcom/aide/engine/Modification;->Zo:I

    iput p4, p0, Lcom/aide/engine/Modification;->VH:I

    iput-object p5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/aide/engine/Modification;->J0:Z

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1a773c485ba64841L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p6, 0x5

    aput-object v1, v0, p6

    const-wide v1, -0x15135649032224L

    const/4 p6, 0x0

    invoke-static {v1, v2, p6, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p6, 0xa

    iput p6, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p2, p0, Lcom/aide/engine/Modification;->v5:I

    iput p3, p0, Lcom/aide/engine/Modification;->Zo:I

    iput p4, p0, Lcom/aide/engine/Modification;->VH:I

    iput-object p5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x23825de7bcce4580L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2cca8183d2441fd1L  # -7.005475032891407E92

    const/4 v3, 0x0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p2, p0, Lcom/aide/engine/Modification;->Zo:I

    iput-object p3, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x2cca8183d2441fd1L  # -7.005475032891407E92

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method protected constructor <init>(IILjava/lang/String;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x261e78f25afa2e9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x15b1daddfd616d08L  # 3.559275308984799E-204

    const/4 v3, 0x0

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput p1, p0, Lcom/aide/engine/Modification;->gn:I

    iput p2, p0, Lcom/aide/engine/Modification;->u7:I

    iput-object p3, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x15b1daddfd616d08L  # 3.559275308984799E-204

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x17c256cff0ee69d9L  # -1.3532604732915408E194

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->FH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->Hw:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->v5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->Zo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->VH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->gn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->u7:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/Modification;->we:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_54

    const/4 v3, 0x1

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :goto_55
    iput-boolean v3, p0, Lcom/aide/engine/Modification;->J0:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->J8:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/Modification;->Ws:I
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v4, :cond_6c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v3
.end method

.method protected constructor <init>(Ljava/lang/String;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xeaebb8cecce2e2fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xb966809e4d76c9cL

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput-object p1, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput p2, p0, Lcom/aide/engine/Modification;->Hw:I

    iput p3, p0, Lcom/aide/engine/Modification;->J8:I

    iput p4, p0, Lcom/aide/engine/Modification;->Ws:I
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0xb966809e4d76c9cL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3e973bf894cd194L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xd349e1f8ae6b3f9L  # -9.348391917399885E244

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput-object p1, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, -0xd349e1f8ae6b3f9L  # -9.348391917399885E244

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xfd036af5a23dfb9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x11b8612a4386300L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput-object p1, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x11b8612a4386300L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2bf37e6781a2ecc3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x343c37b9e9cfd0L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/aide/engine/Modification;->FH:I

    iput-object p1, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/Modification;->we:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0x343c37b9e9cfd0L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x4d6b96a3aaad9b4fL  # 9.079379056924756E64

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->gn:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public EQ()Z
    .registers 5

    const-wide v0, -0xa1949356015205fL  # -8.730929012422608E259

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/engine/Modification;->J0:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0xc9af2d766f9a894L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->VH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x2031c67edba4b830L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->Zo:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x3448a8479db0e74bL  # -5.723602897939519E56

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, -0x133181702ea6256cL  # -1.3140344297512853E216

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->J8:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public describeContents()I
    .registers 5

    const-wide v0, -0x127356b7e64b6640L  # -5.058736761875827E219

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public gn()I
    .registers 5

    const-wide v0, -0x288370cb1692d5d5L  # -2.747308837667414E113

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x44044e68d241d535L  # -9.382994955293865E-20

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->u7:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const-wide v0, -0x1fc584114e3b9da1L  # -3.550938726458722E155

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/engine/Modification;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f5

    const-string v3, ")to("

    const-string v4, ")]"

    const-string v5, ":"

    if-eqz v2, :cond_b6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_97

    const/4 v6, 0x4

    if-eq v2, v6, :cond_78

    const/4 v6, 0x6

    if-eq v2, v6, :cond_4f

    const/16 v3, 0xb

    if-eq v2, v3, :cond_26

    const-string v0, ""

    return-object v0

    :cond_26
    :try_start_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INDENT_LINE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/aide/engine/Modification;->Hw:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/aide/engine/Modification;->J8:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[COPY_FILE("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/Modification;->we:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")as("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MOVE_DIRECTORY_TREE_OR_FILE("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/Modification;->we:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RENAME_FILE_OR_DIRECTORY("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[REPLACE_TEXT_REGION("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/aide/engine/Modification;->Hw:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/aide/engine/Modification;->v5:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/aide/engine/Modification;->Zo:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/aide/engine/Modification;->VH:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f4
    .catchall {:try_start_26 .. :try_end_f4} :catchall_f5

    return-object v0

    :catchall_f5
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_fd

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_fd
    throw v2
.end method

.method public tp()I
    .registers 5

    const-wide v0, -0x28db59ee5f2fb7edL  # -6.207278906675501E111

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public u7()I
    .registers 5

    const-wide v0, 0x3af3f61cbf6b25bfL  # 1.0319789597331965E-24

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/Modification;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x30516db2e8c2f57cL  # 6.020622411399226E-76

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/Modification;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3183293f8cffb87bL  # -1.2439912097850709E70

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/engine/Modification;->FH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->Hw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->v5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->Zo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->VH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->gn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->u7:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/Modification;->tp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/Modification;->EQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/Modification;->we:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/engine/Modification;->J0:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->J8:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/Modification;->Ws:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_53

    return-void

    :catchall_53
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/Modification;->DW:Z

    if-eqz v1, :cond_68

    const-wide v2, -0x3183293f8cffb87bL  # -1.2439912097850709E70

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    throw v0
.end method
