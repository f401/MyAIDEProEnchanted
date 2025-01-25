.class final Lcom/aide/ui/scm/ya;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/ModifiedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/aide/ui/scm/ModifiedFile;",
        ">;"
    }
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x3324ee14634709e0L  # -1.739992604750471E62

    const-wide v2, 0x4794503c91e194ddL  # 6.750293041713745E36

    const-class v4, Lcom/aide/ui/scm/ya;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aide/ui/scm/ModifiedFile;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x44cee4b6f5c64d49L
    .end annotation

    const-wide v0, -0x1e5da38ae0431d60L  # -2.065132144266231E162

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ya;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ModifiedFile;

    invoke-direct {v2, p1}, Lcom/aide/ui/scm/ModifiedFile;-><init>(Landroid/os/Parcel;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ya;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ya;->createFromParcel(Landroid/os/Parcel;)Lcom/aide/ui/scm/ModifiedFile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/aide/ui/scm/ModifiedFile;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1153c34a1f4a0c68L
    .end annotation

    const-wide v0, -0x4a76f1354521c6b7L  # -8.371694067384831E-51

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ya;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-array p1, p1, [Lcom/aide/ui/scm/ModifiedFile;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ya;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/ya;->newArray(I)[Lcom/aide/ui/scm/ModifiedFile;

    move-result-object p1

    return-object p1
.end method
