.class Landroid/support/v4/app/NotificationCompat$h;
.super Landroid/support/v4/app/NotificationCompat$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$g;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$c;)Landroid/app/Notification;
    .registers 39

    move-object/from16 v0, p1

    new-instance v15, Landroid/support/v4/app/aa$a;

    move-object v1, v15

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->j6:Landroid/content/Context;

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->dx:Landroid/app/Notification;

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->DW:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->FH:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->gn:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->Zo:Landroid/widget/RemoteViews;

    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->u7:I

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->Hw:Landroid/app/PendingIntent;

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->v5:Landroid/app/PendingIntent;

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->VH:Landroid/graphics/Bitmap;

    iget v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->QX:I

    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->XL:I

    iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->aM:Z

    move-object/from16 v16, v15

    iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->EQ:Z

    move-object/from16 v34, v16

    move-object/from16 v35, v1

    iget-boolean v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->we:Z

    move/from16 v16, v1

    iget v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->tp:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->J8:Ljava/lang/CharSequence;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->lg:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->yS:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->sG:Ljava/util/ArrayList;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->gW:Landroid/os/Bundle;

    move-object/from16 v22, v1

    iget v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->BT:I

    move/from16 v23, v1

    iget v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->vy:I

    move/from16 v24, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->P8:Landroid/app/Notification;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->j3:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->Mr:Z

    move/from16 v27, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->U2:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->Ws:[Ljava/lang/CharSequence;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->ei:Landroid/widget/RemoteViews;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->nw:Landroid/widget/RemoteViews;

    move-object/from16 v31, v1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->SI:Landroid/widget/RemoteViews;

    move-object/from16 v32, v1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/support/v4/app/NotificationCompat$Builder;)I

    move-result v33

    move-object/from16 v1, v35

    invoke-direct/range {v1 .. v33}, Landroid/support/v4/app/aa$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->a8:Ljava/util/ArrayList;

    move-object/from16 v2, v34

    invoke-static {v2, v1}, Landroid/support/v4/app/NotificationCompat;->j6(Landroid/support/v4/app/V;Ljava/util/ArrayList;)V

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz v1, :cond_82

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$l;->j6(Landroid/support/v4/app/W;)V

    :cond_82
    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/NotificationCompat$c;->j6(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/W;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz v0, :cond_93

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat;->j6(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$l;->j6(Landroid/os/Bundle;)V

    :cond_93
    return-object v1
.end method
