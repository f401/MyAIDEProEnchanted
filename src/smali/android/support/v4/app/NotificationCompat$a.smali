.class public Landroid/support/v4/app/NotificationCompat$a;
.super Landroid/support/v4/app/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final j6:Landroid/support/v4/app/ca$a;


# instance fields
.field final DW:Landroid/os/Bundle;

.field private final FH:[Landroid/support/v4/app/ha;

.field private final Hw:[Landroid/support/v4/app/ha;

.field public VH:Ljava/lang/CharSequence;

.field public Zo:I

.field public gn:Landroid/app/PendingIntent;

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/app/X;

    invoke-direct {v0}, Landroid/support/v4/app/X;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat$a;->j6:Landroid/support/v4/app/ca$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 12

    const/4 v5, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ha;[Landroid/support/v4/app/ha;Z)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ha;[Landroid/support/v4/app/ha;Z)V
    .registers 9

    invoke-direct {p0}, Landroid/support/v4/app/ca;-><init>()V

    iput p1, p0, Landroid/support/v4/app/NotificationCompat$a;->Zo:I

    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$a;->VH:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$a;->gn:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$a;->DW:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$a;->FH:[Landroid/support/v4/app/ha;

    iput-object p6, p0, Landroid/support/v4/app/NotificationCompat$a;->Hw:[Landroid/support/v4/app/ha;

    iput-boolean p7, p0, Landroid/support/v4/app/NotificationCompat$a;->v5:Z

    return-void

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$a;->v5:Z

    return v0
.end method

.method public FH()[Landroid/support/v4/app/ha;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a;->Hw:[Landroid/support/v4/app/ha;

    return-object v0
.end method

.method public bridge synthetic FH()[Landroid/support/v4/app/ja;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$a;->FH()[Landroid/support/v4/app/ha;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a;->DW:Landroid/os/Bundle;

    return-object v0
.end method

.method public VH()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a;->VH:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public Zo()[Landroid/support/v4/app/ha;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a;->FH:[Landroid/support/v4/app/ha;

    return-object v0
.end method

.method public bridge synthetic Zo()[Landroid/support/v4/app/ja;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$a;->Zo()[Landroid/support/v4/app/ha;

    move-result-object v0

    return-object v0
.end method

.method public j6()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$a;->gn:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Landroid/support/v4/app/NotificationCompat$a;->Zo:I

    return v0
.end method
