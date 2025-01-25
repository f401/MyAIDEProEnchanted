.class public Lcom/aide/engine/SyntaxError;
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
            "Lcom/aide/engine/SyntaxError;",
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
.field public EQ:Ljava/lang/String;

.field public FH:I

.field public Hw:I

.field public J0:I

.field public J8:I

.field public QX:I

.field public VH:I

.field public Ws:Z

.field public Zo:I

.field public gn:I

.field public tp:[Ljava/lang/String;

.field public u7:Ljava/lang/String;

.field public v5:I

.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x246cb0b33b2493f1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1d8dc96072bc92a5L  # -1.6781392043876538E166

    :try_start_6
    const-class v3, Lcom/aide/engine/SyntaxError;

    const-wide v4, 0x38f63ef623cc47e5L  # 2.6777580209117926E-34

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/engine/N;

    invoke-direct {v3}, Lcom/aide/engine/N;-><init>()V

    sput-object v3, Lcom/aide/engine/SyntaxError;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x39dc9251ac5f0efcL  # -7.69639850929713E29

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x5e879b3ec6c2b00L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->v5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->Zo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->VH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->gn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/engine/SyntaxError;->u7:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_3b

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->FH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->J0:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->J8:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    goto :goto_56

    :cond_55
    const/4 v3, 0x0

    :goto_56
    iput-boolean v3, p0, Lcom/aide/engine/SyntaxError;->Ws:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->QX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/aide/engine/SyntaxError;->Hw:I
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v4, :cond_6d

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v3
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2ad86cf98b2ef7c9L  # -1.6500141608103023E102

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/SyntaxError;->u7:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x9485fcbe4715998L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/SyntaxError;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    const/16 v1, 0x190

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, 0xa89661a23a1e7ffL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/SyntaxError;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, 0x32e4eff78a7a0c6fL  # 1.5904977922729815E-63

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/SyntaxError;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_21

    const/16 v1, 0xfb

    if-eq v0, v1, :cond_21

    packed-switch v0, :pswitch_data_2c

    packed-switch v0, :pswitch_data_48

    const/4 v0, 0x0

    return v0

    :cond_21
    :pswitch_21  #0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0xc8, 0xc9, 0xca, 0xcb, 0xcc
    const/4 v0, 0x1

    return v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2

    :pswitch_data_2c
    .packed-switch 0x65
        :pswitch_21  #00000065
        :pswitch_21  #00000066
        :pswitch_21  #00000067
        :pswitch_21  #00000068
        :pswitch_21  #00000069
        :pswitch_21  #0000006a
        :pswitch_21  #0000006b
        :pswitch_21  #0000006c
        :pswitch_21  #0000006d
        :pswitch_21  #0000006e
        :pswitch_21  #0000006f
        :pswitch_21  #00000070
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0xc8
        :pswitch_21  #000000c8
        :pswitch_21  #000000c9
        :pswitch_21  #000000ca
        :pswitch_21  #000000cb
        :pswitch_21  #000000cc
    .end packed-switch
.end method

.method public describeContents()I
    .registers 5

    const-wide v0, 0x1a236f17398facd0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 6

    const-string v0, "\'"

    const-wide v1, 0x2f48041def0eaf23L  # 6.329557191737279E-81

    :try_start_7
    sget-boolean v3, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/aide/engine/SyntaxError;->u7:Ljava/lang/String;

    const-string v4, "</C>"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<//C>"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    move-exception v0

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public v5()Z
    .registers 5

    const-wide v0, 0x33905f87f9ee6de3L  # 2.5472619560674794E-60

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/SyntaxError;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/SyntaxError;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x325832975d637f47L  # 3.590158755474097E-66

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/engine/SyntaxError;->v5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->Zo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->VH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->gn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/SyntaxError;->u7:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-eqz v0, :cond_3b

    array-length v1, v0

    if-lez v1, :cond_3b

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_3f

    :cond_3b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3f
    iget v0, p0, Lcom/aide/engine/SyntaxError;->FH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->J0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->J8:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/aide/engine/SyntaxError;->Ws:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->QX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aide/engine/SyntaxError;->Hw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5e

    return-void

    :catchall_5e
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/SyntaxError;->DW:Z

    if-eqz v1, :cond_73

    const-wide v2, 0x325832975d637f47L  # 3.590158755474097E-66

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_73
    throw v0
.end method
