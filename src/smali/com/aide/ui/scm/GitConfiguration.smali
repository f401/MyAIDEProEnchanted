.class public Lcom/aide/ui/scm/GitConfiguration;
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
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aide/ui/scm/GitConfiguration;",
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
.field public final FH:Ljava/lang/String;

.field public final Hw:Ljava/lang/String;

.field public final Zo:Z

.field public final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xb93b9a475d328e1L
    .end annotation

    const-wide v8, 0x294172474dc68f9L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/scm/GitConfiguration;

    const-wide v2, -0x143f5881793b9753L    # -1.0950468329249174E211

    const-wide v4, -0x143f5881793b9753L    # -1.0950468329249174E211

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x294172474dc68f9L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/g;

    invoke-direct {v0}, Lcom/aide/ui/scm/g;-><init>()V

    sput-object v0, Lcom/aide/ui/scm/GitConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/GitConfiguration;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const-wide v4, -0x3948676f71158e17L    # -4.785828402021723E32

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3948676f71158e17L    # -4.785828402021723E32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/GitConfiguration;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->j6:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0xc3333baf299a078L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0xc3333baf299a078L

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 5

    const-wide v2, -0xc10cb1dde0008c4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc10cb1dde0008c4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/GitConfiguration;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const-wide v2, -0x1a80c1ab6efef0bbL    # -8.10283111837715E180

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1a80c1ab6efef0bbL    # -8.10283111837715E180

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/GitConfiguration;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/scm/GitConfiguration;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/scm/GitConfiguration;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/ui/scm/GitConfiguration;->Zo:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/GitConfiguration;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
