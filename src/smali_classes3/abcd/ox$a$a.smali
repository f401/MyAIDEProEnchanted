.class public final Labcd/ox$a$a;
.super Labcd/Cx;

# interfaces
.implements Labcd/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ox$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, p1, v0}, Labcd/Cx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
