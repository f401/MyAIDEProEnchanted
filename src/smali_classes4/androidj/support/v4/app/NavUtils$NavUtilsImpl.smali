.class interface abstract Landroidj/support/v4/app/NavUtils$NavUtilsImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NavUtilsImpl"
.end annotation


# virtual methods
.method public abstract getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
.end method

.method public abstract getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
.end method

.method public abstract navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
.end method
