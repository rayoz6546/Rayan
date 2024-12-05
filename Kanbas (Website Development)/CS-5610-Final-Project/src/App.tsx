import { HashRouter, Navigate, Route, Routes } from "react-router-dom";
import Kanbas from "./Kanbas";
import Labs from "./Labs";
import { Provider } from "react-redux";
import store from "./Kanbas/store";
function App() {
    return (
        <HashRouter>
            <Provider store={store}>
            <div>
                <Routes>
                    <Route path="/" element={<Navigate to="Kanbas" />} />
                    {/* <Route path="/Labs/*" element={<Labs />} />*/}
                    <Route path="/Kanbas/*" element={<Kanbas />} />
                </Routes>
            </div>
            </Provider>
        </HashRouter>
    );
}

export default App;
