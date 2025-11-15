import { Outlet, createFileRoute } from '@tanstack/react-router'

export const Route = createFileRoute('/_dashboardLayout')({
    component: DashboardLayout,
})

function DashboardLayout() {
    console.log('123123');
    return (
        <div className="min-h-screen">
            <div>
                <Outlet />
            </div>
        </div>
    )
} 