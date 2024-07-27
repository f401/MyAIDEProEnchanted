.class public abstract Lcom/aide/licensing/g$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/aide/licensing/g;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/licensing/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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
    .registers 4

    const-wide v2, -0x53121ff2fe5bd558L

    const-class v0, Lcom/aide/licensing/g$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x1e34ccc513db1e6dL    # -1.2237098534130171E163

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/g$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e34ccc513db1e6dL    # -1.2237098534130171E163

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.aide.licensing.IAideLicenseResultListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/g$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/aide/licensing/g;
    .registers 7

    const-wide v4, 0xb65ac9e5a368d48L    # 9.23843843871539E-254

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/g$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0xb65ac9e5a368d48L    # 9.23843843871539E-254

    const/4 v0, 0x0

    invoke-static {v2, v3, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.aide.licensing.IAideLicenseResultListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/aide/licensing/g;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/aide/licensing/g;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/aide/licensing/g$a$a;

    invoke-direct {v0, p0}, Lcom/aide/licensing/g$a$a;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/aide/licensing/g$a;->DW:Z

    if-eqz v2, :cond_3

    invoke-static {v0, v4, v5, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5

    const-wide v2, 0x231f19b6186007L

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/g$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x231f19b6186007L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/g$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/g$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xd8e3c5ed72d580L

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "com.aide.licensing.IAideLicenseResultListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "com.aide.licensing.IAideLicenseResultListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/licensing/g;->XX()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "com.aide.licensing.IAideLicenseResultListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/licensing/g;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/licensing/g$a;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, -0xd8e3c5ed72d580L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method
