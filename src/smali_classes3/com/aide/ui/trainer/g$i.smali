.class public Lcom/aide/ui/trainer/g$i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/trainer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field protected FH:Lorg/w3c/dom/Element;
    .annotation runtime Labcd/ru;
        field = 0x38994b1d6b2c4558L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x569c72b5458eb0dL
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x26529950fb3f6e71L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/trainer/g$c;
    .annotation runtime Labcd/ru;
        field = -0x6a75e949d2f913dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g$i;

    const-wide v1, -0x1d2c1eeb84b69229L  # -1.1722410107628596E168

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/trainer/g$c;Lorg/w3c/dom/Element;IZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xb0b86d522dc9377L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/aide/ui/trainer/g$i;->v5:Lcom/aide/ui/trainer/g$c;

    iput p3, p0, Lcom/aide/ui/trainer/g$i;->Hw:I

    iput-boolean p4, p0, Lcom/aide/ui/trainer/g$i;->Zo:Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0xb0b86d522dc9377L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/trainer/g$c;
    .registers 5

    const-wide v0, 0x1deb308fa6c3e4a1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g$i;->v5:Lcom/aide/ui/trainer/g$c;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x75dc2c95eb6a800L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x53c6aacd7294cb07L  # 3.7825656052486886E95

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "description"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 7

    const-string v0, "example"

    const-wide v1, 0x10fa7f13b15612d4L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->we()Z

    move-result v4

    if-eqz v4, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (en)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_29
    iget-object v4, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    invoke-static {v4, v0}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<br/><br/><b>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    invoke-static {v3, v0}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<"

    const-string v5, "&lt;"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ">"

    const-string v5, "&gt;"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</b>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_65

    :cond_64
    return-object v3

    :catchall_65
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_6d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method public J0()Z
    .registers 5

    const-wide v0, -0x10877bc51e4bb743L  # -9.292564999094401E228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/trainer/g$i;->Zo:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()Ljava/lang/String;
    .registers 5

    const-wide v0, -0xe6140bac748739cL  # -2.0021722644874195E239

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 6

    const-string v0, "id"

    const-wide v1, 0x18945e78982a5c25L  # 2.857281611359585E-190

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    invoke-static {v3, v0}, Lcom/aide/ui/trainer/g;->Zo(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    invoke-static {v3, v0}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->DW()Lcom/aide/ui/trainer/g$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_41

    return-object v0

    :catchall_41
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v0
.end method

.method public gn()I
    .registers 5

    const-wide v0, -0x1139d9c736b00d2fL  # -4.099273106863113E225

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/trainer/g$i;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, 0x1d1fcecf780909f4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x920fe132e1e0370L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public tp()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x31ee711358b42ac0L  # -1.183426980905107E68

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "section"

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/g;->FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public u7()Ljava/util/Date;
    .registers 6

    const-wide v0, 0xacde84edcd73cf7L  # 1.244896199979799E-256

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_23

    :cond_c
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v4, "release_date"

    invoke-static {v3, v4}, Lcom/aide/ui/trainer/g;->Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_1f} :catch_20
    .catchall {:try_start_c .. :try_end_1f} :catchall_23

    return-object v0

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public v5()I
    .registers 6

    const-wide v0, -0x1b4a04fd397df72bL  # -1.3917308505194547E177

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g$i;->FH:Lorg/w3c/dom/Element;

    const-string v3, "time"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/aide/ui/trainer/g;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public we()Z
    .registers 5

    const-string v0, "en"

    const-wide v1, 0x160e3192f7b67310L  # 1.926054296671615E-202

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Lcom/aide/ui/trainer/g$i;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_26

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :catchall_26
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/trainer/g$i;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v0
.end method
